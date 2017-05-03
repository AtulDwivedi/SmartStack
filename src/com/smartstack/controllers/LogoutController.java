package com.smartstack.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/logout.spring")
public class LogoutController{

	Logger logger = Logger.getLogger(LogoutController.class);

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpSession session){
		logger.info("Inside logout");
		session = request.getSession();

		if(session != null){
			session.removeAttribute("user");				
		}
		logger.info("Logout successfull");
		return new ModelAndView("first");
	}	
}



