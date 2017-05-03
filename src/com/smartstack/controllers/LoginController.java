package com.smartstack.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smartstack.dto.User;
import com.smartstack.models.RegisterBL;


@Controller
@RequestMapping(value="/login.spring")
public class LoginController{

	Logger logger = Logger.getLogger(LoginController.class);

	@RequestMapping(method=RequestMethod.POST)
	public String login(HttpServletRequest request, 
			HttpSession session,
			@RequestParam("email")String email, 
			@RequestParam("password")String password){
		logger.info("Inside LoginController");
		String page="Login_Signup";

		WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
		RegisterBL fetchObj = (RegisterBL)context.getBean("fetch1");

		if(fetchObj.loginReal(email, password)){
			User user = fetchObj.getUserById(email);
			session = request.getSession();
			session.setAttribute("user", user);
			page="/WEB-INF/first";
			logger.info("Login successfull");
		}
		logger.info("Inside LoginController");
		return page;
	}	

}



