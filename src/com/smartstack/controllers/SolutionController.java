package com.smartstack.controllers;

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
public class SolutionController {
			
	List<Solution> solList=null;
	
			@RequestMapping(value="/solution.spring", method=RequestMethod.GET)
			public ModelAndView get(HttpServletRequest request, HttpSession session,
					@RequestParam("quesId")String quesId){
				long qId=Long.parseLong(quesId);
				List<Solution> list = null;
				int fav = 0;
				//Set<String> solKey = new HashSet<String>();
				session= request.getSession();
				Question myQuestion=null;
				if(session != null){
				//solKey.add(((User)session.getAttribute("user")).getEmailId());
				//solKey.add(quesId);
					User user = (User) session.getAttribute("user");
				WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
				QuestionAndAnswerBL fetch = (QuestionAndAnswerBL)context.getBean("qaModelObj");
				list=fetch.getSolutionsByQuesID(qId);
				myQuestion = fetch.getQuestionById(qId);
				
				for(int i=0; i < user.getFavQues().size(); i++){
					if(user.getFavQues().get(i) == qId){
						fav=1;
					}
				}
				
				}
			
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("sol", list);
				map.put("fav", fav);
				map.put("session", session.getAttribute("user"));
				map.put("ques", myQuestion);
				
			return new ModelAndView("/WEB-INF/mySolution", "key", map);
			
}


			@RequestMapping(value="/submitSolution.spring", method=RequestMethod.POST)
			public ModelAndView set(HttpServletRequest request, HttpSession session, 
				@RequestParam("quesId")String quesId,
				@RequestParam("solutionText")String solutionText){
				
				Solution solObj = null;				
				long qId= Long.parseLong(quesId);
				session= request.getSession();
				
				//String userId = ((User)session.getAttribute("user")).getEmailId();
				
				Date date = new Date();				
				
				User user = (User) session.getAttribute("user");
				if(user != null){
				solObj = new Solution(qId, user.getUserId(),user.getName(), solutionText, date,((int)(Math.random()*100)));
				WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
				QuestionAndAnswerBL fetch = (QuestionAndAnswerBL)context.getBean("qaModelObj");
				
				solList=fetch.setMySolution(solObj);
				
				session.setAttribute("quesId",	quesId);
				
				
				
				}
			
				
				return new ModelAndView("/WEB-INF/postRedirectGet");
			
}
			
			
			@RequestMapping(value="/submitSolutionRedirect.spring", method=RequestMethod.GET)
			public ModelAndView postRedirectGet(HttpServletRequest request, HttpSession session){
				
				//List<SolutionReal> list = null;
				int fav = 0;
				session= request.getSession();
				//String userId = ((User)session.getAttribute("user")).getEmailId();
				long quesId = (Long.parseLong((String) session.getAttribute("quesId")));
				Question myQuestion=null;
				
				if(session != null){
					User user = (User) session.getAttribute("user");
				WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
				QuestionAndAnswerBL fetch = (QuestionAndAnswerBL)context.getBean("qaModelObj");
				myQuestion = fetch.getQuestionById(quesId);
				//list=fetch.getSolutions(userId, quesId);
				for(int i=0; i < user.getFavQues().size(); i++){
					if(user.getFavQues().get(i) == quesId){
						fav=1;
					}
				}
				}
			
				Map<String, Object> map = new HashMap<String, Object>();
				//map.put("list", list);
				map.put("session", session.getAttribute("user"));
				map.put("fav", fav);
				map.put("ques", myQuestion);
				map.put("sol", solList);
				
			return new ModelAndView("/WEB-INF/mySolution", "key", map);
			
}
			
			
			@RequestMapping(value="/publicSolution.spring", method=RequestMethod.GET)
			public ModelAndView publicSolution(HttpServletRequest request, @RequestParam("quesId")String quesId){
				long qId=Long.parseLong(quesId);
				List<Solution> list = null;
				//Set<String> solKey = new HashSet<String>();
				Question myQuestion=null;
				WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
				QuestionAndAnswerBL fetch = (QuestionAndAnswerBL)context.getBean("qaModelObj");
				list=fetch.getSolutionsByQuesID(qId);
				myQuestion = fetch.getQuestionById(qId);
				
			
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("sol", list);
				map.put("ques", myQuestion);
				
			return new ModelAndView("solution", "key", map);
			
}


}
			

	

