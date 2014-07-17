package com.smartstack.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smartstack.dto.User;
import com.smartstack.models.RegisterBL;

@Controller
public class AjaxController {
	
	@RequestMapping(value="/ajax.spring", method=RequestMethod.POST)
	public String get(HttpServletRequest request, 
			@RequestParam("email")String email){
		
		WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
		RegisterBL fetchObj = (RegisterBL)context.getBean("fetch1");
		
		if(fetchObj.getEmailId(email)){
		        	System.out.println("not ok");
		        	return "notOk";
		        }else{
		        	System.out.println("ok");
		        	return "ok";
		        }
	}
	
	
	@RequestMapping(value="/authenticate.spring", method=RequestMethod.POST)
	public String authenticate(HttpServletRequest request, HttpSession session){
		
		session = request.getSession();
		
		if(session.getAttribute("user") != null){
		        	System.out.println(this.getClass().getSimpleName()+": ok");
		        	return "ok";
		        }else{
		        	System.out.println(this.getClass().getSimpleName()+": not ok");
		        	return "notOk";
		        }
	}
	
	@RequestMapping(value="/vote.spring", method=RequestMethod.POST)
	public ModelAndView vote(HttpServletRequest request, 
			@RequestParam("vote")String vote,
			@RequestParam("quesId")String quesId){
		
			long q = Long.parseLong(quesId);
		
		WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
		RegisterBL fetch = (RegisterBL)context.getBean("fetch1");
		int v =0;
		if(vote.equals("like")){
			v = fetch.setVote(1, q);
		}
		else{
			v = fetch.setVote(-1, q);
		}
		
		
		return new ModelAndView("WEB-INF/votes", "key", v);
	}
	
	
	
	
	@RequestMapping(value="/voteSol.spring", method=RequestMethod.POST)
	public ModelAndView voteSol(HttpServletRequest request, 
			@RequestParam("vote")String vote,
			@RequestParam("solId")String solId){
		
			long q = Long.parseLong(solId);
		
		WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
		RegisterBL fetch = (RegisterBL)context.getBean("fetch1");
		
		int v =0;
		if(vote.equals("like")){
			v = fetch.setGetSolVote(1, q);
		}
		else{
			v = fetch.setVote(-1, q);
		}
		
		
		return new ModelAndView("WEB-INF/solVotes", "key", v);
	}
	
	@RequestMapping(value="/makeFavQues.spring", method=RequestMethod.POST)
	public ModelAndView makeFavQues(HttpServletRequest request, HttpSession session, 
			@RequestParam("quesId")String quesId){
		
			long q = Long.parseLong(quesId);
		
		WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
		RegisterBL fetch = (RegisterBL)context.getBean("fetch1");
		session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		user= fetch.addToMyFavQues(q, user);
		
		//session.removeAttribute("user");
		session.setAttribute("user", user);
		
		return new ModelAndView("WEB-INF/favList", "key", user);
	}
}
