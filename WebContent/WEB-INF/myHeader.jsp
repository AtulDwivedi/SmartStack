<%-- <%@page import="org.h2.value.Value"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="..//bootstrap-3.0.2-dist//docs-assets//ico//favicon.png">
<title>Static Header</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css" rel="stylesheet">
<!-- /Bootstrap core CSS -->

</head>

<body>
<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.html"> SmartStack :-)</a> </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="index.html">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Login_Signup.jsp">${key.name }</a></li>
        <li><a href="Login_Signup.jsp">Logout</a></li>
        <li>
          <form class="form-horizontal" action="mySearch.spring">
            <input class="form-control" type="text" name="search" id="langField1" placeholder="search">
          </form>
        </li>
      </ul>
    </div>
  </div>
</div>

</body>
</html>
