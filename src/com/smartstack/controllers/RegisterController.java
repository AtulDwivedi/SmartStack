package com.smartstack.controllers;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smartstack.dto.Badges;
import com.smartstack.dto.User;
import com.smartstack.models.RegisterBL;

@Controller
public class RegisterController {
	

	@RequestMapping(value=("/register.spring"), method=RequestMethod.POST)
	public String get(HttpServletRequest request, 
			HttpSession session,
			@ModelAttribute("User")User user){

		String page = "Login_Signup";
		Set<Badges> badges = new HashSet<Badges>(); 
		badges.add(new Badges(10, "Beginer"));badges.add(new Badges(9, "Informed"));
		user.setBadges(badges);
		List<Long> favList = new ArrayList<Long>();
		user.setFavQues(favList);
	WebApplicationContext context =RequestContextUtils.getWebApplicationContext(request);
	//RegisterBL fetch = (RegisterBL)context.getBean("user");
	RegisterBL f = (RegisterBL)context.getBean("fetch1");
	User u = f.createAccount(user);
	if(u != null){
		
		 session = request.getSession();
			session.setAttribute("user", u);
			System.out.println(getClass().getSimpleName()+": "+session.getAttribute("user"));
			page="/WEB-INF/first";
	}
	
	return page;
	
	}	
	
}
