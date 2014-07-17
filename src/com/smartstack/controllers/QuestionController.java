package com.smartstack.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smartstack.dto.Question;
import com.smartstack.dto.Solution;
import com.smartstack.dto.User;
import com.smartstack.models.QuestionAndAnswerBL;



@Controller
public class QuestionController {
	
	@RequestMapping(value="/ask.spring", method=RequestMethod.GET)
	public ModelAndView get(HttpServletRequest request, HttpSession session){
		
		session = request.getSession();
		ModelAndView mav =null;
		if(session.getAttribute("user") != null){
			System.out.println("AskControl");
			
			List<String> tagList = new ArrayList<String>();  
			tagList.add("C");	tagList.add("CPP");	tagList.add("DS");  
			tagList.add("Java");	tagList.add("JEE");	
			tagList.add("C#");	tagList.add(".Net");	tagList.add("ASP.Net");
			tagList.add("HTML");	tagList.add("CSS");	tagList.add("JavaScript");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("session", session.getAttribute("user"));
			map.put("list", tagList);
			mav = new ModelAndView("WEB-INF/ask", "key", map);
		}
		else{
			mav = new ModelAndView("utility/message");
		}
		
		return mav;
		
	}
	
	
	@RequestMapping(value="/quesSubmitReal.spring", method=RequestMethod.POST)
	public ModelAndView put(HttpServletRequest request, 
							HttpSession session, 
							@RequestParam("quesTitle")String quesTitle, 
							@RequestParam("ques")String ques,
							@RequestParam("tagList")String[] topic){
		 List<String> tagList = Arrays.asList(topic);
		session = request.getSession();
		ModelAndView mav =null;
		User user = (User) session.getAttribute("user");
		if(user != null){
			//List<String> tagList = new ArrayList<String>();
			//tagList.add("C"); tagList.add("C++"); tagList.add("Java");
			
			Question myQues = new Question(user.getUserId(), ((User)session.getAttribute("user")).getName(), 1,2, quesTitle, ques, tagList, new Date());
			List<Question> myFavQuesList = null;
			List<Solution> solList = null;
			
			WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
			QuestionAndAnswerBL fetch = (QuestionAndAnswerBL)context.getBean("qaModelObj");
			
			fetch.setMyQuestion(myQues);
			System.out.println(user.getUserId());
			List<Question> list=fetch.getMyQuestions(user.getUserId());
			myFavQuesList=fetch.getMyFavQuestions(user.getFavQues());
			solList = fetch.getMySolutions(((User)session.getAttribute("user")).getUserId());
			System.out.println(list.size());
		
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("solList", solList);
			map.put("myFavQuesList", myFavQuesList);
			map.put("session", session.getAttribute("user"));
			
			
			mav = new ModelAndView("WEB-INF/myAccount", "key", map);
		}
		else{
			mav = new ModelAndView("utility/message");
		}
		
		return mav;
		
	}

}
