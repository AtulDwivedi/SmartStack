<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users Added using Ajax</title>
</head>
<body style="color: green;">
	The following are the users added in the list :<br>
	<ul>
	<c:forEach items="${Users}" var="user">
		<li>Name : <c:out value="${user.name}" />; Education : <c:out value="${user.education}"/>
	</c:forEach>
	</ul>
</body>
</html>