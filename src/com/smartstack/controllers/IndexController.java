package com.smartstack.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smartstack.dto.Question;
import com.smartstack.dto.sorting.SortOnAns;
import com.smartstack.dto.sorting.SortOnVotes;
import com.smartstack.dto.sorting.SortOnVotesPlusAns;
import com.smartstack.models.RegisterBL;


@Controller
public class IndexController {

	int pageNo=1;
	int pageSize=5;
	static List<Question> myList=null;
	static int previousRowCount = 0;
	static int currentRowCount=0;

	//Logger logger = Logger.getLogger(IndexController.class);


	@RequestMapping(value="/indexReal.spring", method=RequestMethod.GET)
	public ModelAndView get(HttpServletRequest request, 
			@RequestParam("page")String page, 
			@RequestParam("pagesize")String pagesige){

		//logger.info("!!! ---- WELCOME ---- !!!");

		if(request.getParameter("page") != null)
			pageNo = Integer.parseInt(request.getParameter("page"));

		if(request.getParameter("pagesize") != null)
			pageSize = Integer.parseInt(request.getParameter("pagesize"));

		WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
		RegisterBL fetch = (RegisterBL)context.getBean("fetch1");


		currentRowCount = fetch.getQuesRowCount();
		//logger.info("No. of Questions: "+currentRowCount);

		if(myList == null){
			myList = fetch.getQuestionByDefault();
		}
		else if(currentRowCount > previousRowCount ){
			myList = fetch.getQuestionByDefault();
			previousRowCount = currentRowCount;
		}

		int length = 0;int temp=0;
		if(myList.size()%pageSize == 0){
			length = myList.size()/pageSize;
		}
		else{
			length = myList.size()/pageSize + 1;
			temp = myList.size()%pageSize;
		}

		//System.out.println((pageNo-1)*pageSize);
		//System.out.println(((pageNo-1)*pageSize)+pageSize-1);

		List<Question> list = myList.subList((pageNo-1)*pageSize, 
				((pageNo-1)*pageSize)+pageSize > myList.size() ? ((pageNo-1)*pageSize)+temp : ((pageNo-1)*pageSize)+pageSize );

		//System.out.println(list.size());


		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("length", length);
		map.put("pageNo", pageNo);
		map.put("pagesize", pageSize);

		return new ModelAndView("index", "key", map);
	}

	@RequestMapping(value="/sort.spring", method=RequestMethod.GET)
	public void getIndexsort(HttpServletRequest request, 
			HttpServletResponse response, 
			@RequestParam("sortBy")String sortBy){

		Comparator<Question> customSort=null;

		if(sortBy.equals("top")){
			myList.clear();
			previousRowCount = 0;
			currentRowCount=0;
		}
		else if(sortBy.equals("newest")){
			Collections.sort(myList);
		}
		else if(sortBy.equals("featured")){
			customSort = new SortOnVotes();
			Collections.sort(myList,customSort);
		}
		else if(sortBy.equals("popular")){
			customSort = new SortOnVotesPlusAns();
			Collections.sort(myList,customSort);
		}
		else if(sortBy.equals("hot")){
			customSort = new SortOnAns();
			Collections.sort(myList,customSort);
		}


		try {
			request.getRequestDispatcher("indexReal.spring?page=1&pagesize=5").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping(value=("/search.spring"), method=RequestMethod.GET)
	public void get(HttpServletRequest request, 
			HttpServletResponse response,
			@RequestParam("search")String search){

		List<Question> searchedQuesList = new ArrayList<Question>();


		for (Iterator<Question> iterator = myList.iterator(); iterator.hasNext();) {
			Question question = (Question) iterator.next();
			List<String> tagList = question.getTagList();
			for (Iterator<String> iterator2 = tagList.iterator(); iterator2.hasNext();) {
				String string = (String) iterator2.next();
				if(string.equalsIgnoreCase(search)){
					searchedQuesList.add(question);
					//break;
				}

			}
		}

		myList = searchedQuesList;

		try {
			request.getRequestDispatcher("indexReal.spring?page=1&pagesize=5").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
