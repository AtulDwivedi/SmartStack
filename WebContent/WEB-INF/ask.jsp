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
<title>Ask Question</title>
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
      <a class="navbar-brand" href="myIndex.spring?page=1&pagesize=5"> SmartStack</a> </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="myIndex.spring?page=1&pagesize=5">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="contact-us.html">Contact</a></li>
      </ul>
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="myAccount.spring">${key.session.name }</a></li>
        <li><a href="logout.spring">Logout</a></li>
        <li>
          <form class="form-horizontal">
            <input class="form-control" type="text" placeholder="search">
          </form>
        </li>
      </ul>
    </div>
  </div>
</div>
<!-- /Fixed navbar -->

<!-- Container -->
<div class="container">


 <!-- Jumbotron-->
  <div class="jumbotron">
    <h2>Smart Satck</h2>
    <p>Smart Stack is a question and answer site for professional and enthusiast programmers. 
Programmers can submit their technical problem and ask for solution.</p>
    <p class="pull-right"> 
    <a class="btn btn-default btn-primary" href="first.jsp" role="button">Questions</a> 
    <a class="btn btn-default btn-primary" href="tags.jsp" role="button">Tags</a> 
   <!--  <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Tour</a> 
    <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Users</a>  -->
    <a class="btn btn-default btn-warning disabled" href="../../components/#navbar" role="button">Ask Question </a> 
    </p>
  </div>
   <!-- /Jumbotron-->

<!--Page Header-->
<div class="page-header"><h1>I have a question...</h1></div>
<!-- /Page Header-->

<div class="row">

<div class="col-md-8">

      <form class="form-horizontal" action="quesSubmitReal.spring" method="post" role="form">
       <h3><label class="label label-primary form-control">Question:</label></h3>
            <input type="text" class="form-control" id="inputEmail3" name="quesTitle" placeholder="What is your question?" />
         <br>
         <h3> <label class="label label-primary form-control">Question Explaination:</label></h3>
            <textarea class="form-control"  id="inputEmail3" name="ques" placeholder="Tell more about your question." rows="10" ></textarea>
        
      <br>
       <h3> <label class="label label-primary form-control">Related Tags:</label></h3>
        <!-- <div class="alert-success"> 
        <span class="col-lg-2"><input type="checkbox" /> C</span>
        <span class="col-lg-2">  <input type="checkbox"> C++ </span>
        <span class="col-lg-2">  <input type="checkbox"> Java </span>
        <span class="col-lg-2">  <input type="checkbox"> JEE</span>
        <span class="col-lg-2">  <input type="checkbox"> .Net</span>
        <span class="col-lg-2">  <input type="checkbox"> C#</span>
        <span class="col-lg-2">  <input type="checkbox"> Data Structure</span>
        <span class="col-lg-2">  <input type="checkbox"> HTML5</span>
        <span class="col-lg-2">  <input type="checkbox"> CSS3</span>
        <span class="col-lg-2"><input type="checkbox" /> JavaScript</span>
        <span class="col-lg-2">  <input type="checkbox"> jQuery</span>
        <span class="col-lg-2">  <input type="checkbox"> EJB</span>
        <span class="col-lg-2">  <input type="checkbox"> JNDI</span>
        <span class="col-lg-2">  <input type="checkbox"> OOP</span>
        </div> -->
         <c:forEach var = "tag" items = "${key.list}">
        <input type = "checkbox" name = "tagList" value = "${tag}" /> <c:out value = "${tag}" />
    	</c:forEach>
           <br><br>
       <hr>
        <button type="submit" class="btn btn-success pull-right col-md-4">Submit</button>

      </form>
   
</div>
 
 
   <div class="col-md-4"> 
   <div class=" alert-danger">    
        <div class="page-header"><h4>Tips: Before asking new question...</h4></div>
      
            <ul>
            <li>You have to serch for similer question.</li> 
            <li>You have to do this. You have to do this.</li> 
            <li>You have to do this.</li> 
            <li>You have to do this.</li>
            </ul>
          <br>
        </div>  
         <div class=" alert-info">    
        <div class="page-header"><h4>Tips: How to ask ?</h4></div>
      
            <ul>
            <li>You have to do this. You have to do this.</li> 
            <li>You have to do this. You have to do this.</li> 
            <li>You have to do this.</li> 
            <li>You have to do this.</li>
            </ul>
          <br>
        </div></div>
</div>

<!-- Footer -->
<div id="footer"></div>
<!-- Footer -->

<!-- Script -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ajax.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-basics.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-advanced.js" type="text/javascript"></script>
<!-- /Script -->

</body>
</html>
