package com.smartstack.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/logout.spring")
public class LogoutController{
	
	

		@RequestMapping(method=RequestMethod.GET)
		public ModelAndView get(HttpServletRequest request, HttpSession session){

			//String page="Login_Signup";
			
			session = request.getSession();
		System.out.println("Hello");
			
			if(session != null){
				session.removeAttribute("user");				
				//page="first";
			}
		
		return new ModelAndView("first");
		
		}	
		
	}



