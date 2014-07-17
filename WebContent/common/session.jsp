<%@page import="com.smartstack.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	com.smartstack.dto.User user = (User)(session.getAttribute("user"));
if (user ==null){
	/* String message = "You are not logged in currently, Press <a href='Login_Signup.jsp'>here</a> to relogin";
	request.setAttribute("message",message); */
	request.getRequestDispatcher("../utility/message.jsp").forward(request, response);
}
else
{
	System.out.println("Session Validated");
}
%>