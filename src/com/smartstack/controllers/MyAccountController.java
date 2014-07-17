package com.smartstack.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smartstack.dto.Question;
import com.smartstack.dto.Solution;
import com.smartstack.dto.User;
import com.smartstack.models.QuestionAndAnswerBL;
import com.smartstack.models.RegisterBL;


@Controller
@RequestMapping()
public class MyAccountController{
	

	@RequestMapping(value="/update.spring", method=RequestMethod.GET)
	public ModelAndView get(HttpServletRequest request, HttpSession session){

		//String page="Login_Signup";
		
		session = request.getSession();
	
		
		/*if(session != null){
			System.out.println(getClass().getSimpleName()+": "+session.getAttribute("user"));
			page="/WEB-INF/update";
		}*/
	
	return new ModelAndView("/WEB-INF/update", "key", session.getAttribute("user"));
	
	}	

		@RequestMapping(value="/myAccount.spring", method=RequestMethod.GET)
		public ModelAndView get2(HttpServletRequest request, HttpSession session){

			List<Question> list = null;
			List<Question> myFavQuesList = null;
			List<Solution> solList = null;
			session= request.getSession();
			
			if(session != null){
				User user = (User) session.getAttribute("user");
			WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
			QuestionAndAnswerBL fetch = (QuestionAndAnswerBL)context.getBean("qaModelObj");
			
			list=fetch.getMyQuestions(((User)session.getAttribute("user")).getUserId());
			myFavQuesList=fetch.getMyFavQuestions(user.getFavQues());
			solList = fetch.getMySolutions(((User)session.getAttribute("user")).getUserId());
			}
		
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("solList", solList);
			map.put("myFavQuesList", myFavQuesList);
			map.put("session", session.getAttribute("user"));
			
		return new ModelAndView("/WEB-INF/myAccount", "key", map);
		
		}	
		
		
		@RequestMapping(value=("/updateData.spring"), method=RequestMethod.POST)
		public ModelAndView setUpdateData(HttpServletRequest request, 
				HttpSession session,
				@ModelAttribute("User")User user){
			List<Question> list = null;
			List<Question> myFavQuesList = null;
			List<Solution> solList = null;
			
			session = request.getSession();
			User obj=(User) session.getAttribute("user");
			
			Map<String, Object> map = new HashMap<String, Object>();
		
		if(obj != null){
			
			WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
			RegisterBL fetch = (RegisterBL)context.getBean("fetch1");
			QuestionAndAnswerBL fetch2 = (QuestionAndAnswerBL)context.getBean("qaModelObj");
			
			user.setBadges(obj.getBadges());
			user.setFavQues(obj.getFavQues());
			
			obj=fetch.update(user);
			
			session.removeAttribute("user");
			session.setAttribute("user", obj);
			
			list=fetch2.getMyQuestions(((User)session.getAttribute("user")).getUserId());
			myFavQuesList=fetch2.getMyFavQuestions(user.getFavQues());
			solList = fetch2.getMySolutions(((User)session.getAttribute("user")).getUserId());
			
			
			
			map.put("list", list);
			map.put("solList", solList);
			map.put("myFavQuesList", myFavQuesList);
			map.put("session", obj);
		}
		
		return new ModelAndView("/WEB-INF/myAccount", "key", map);
		
		}
		
	}



