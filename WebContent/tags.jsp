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
<link rel="shortcut icon" href="resources/images/favicon.ico">
<title>Tags</title>


<!-- Bootstrap core CSS -->

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.css" rel="stylesheet">

<!-- /Bootstrap core CSS -->

</head>
<body>


<!-- Fixed navbar -->
<div  id="mystaticHdr"></div>
<!-- /Fixed navbar -->


<!-- Container  -->
<div class="container">


<!-- Jumbotron-->
<div class="jumbotron">
    <h2>Smart Stack</h2>
    <p>Smart Stack is a question and answer site for professional and enthusiast programmers. 
Programmers can submit their technical problem and ask for solution.</p>
    <p class="pull-right"> 
    <a class="btn btn-default btn-primary" href="first.jsp" role="button">Questions</a> 
    <a class="btn btn-default btn-primary disabled" href="../../components/#navbar" role="button">Tags</a> 
    <!-- <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Tour</a>  -->
   <!--  <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Users</a>  -->
    <a class="btn btn-default btn-warning" id="idForAuthCheck" href="#" role="button">Ask Question </a> 
 </p>
  </div>
<!-- /Jumbotron-->


<!--Page Header-->
<div class="page-header"><h1>Tags</h1></div>
<!-- /Page Header-->


<!-- Main Content  -->
<div class="row">


<!-- Main Content Row  -->
<div class="col-md-12">


<!-- Main Content Row1  -->
<div class="row">
<div class="col-md-12">
   <div class="col-md-3 well">
   <input type="button" class="btn btn-success btn-sm" value="C"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
   </div>
  
   <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="C++"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
   <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="OOP"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
 
  
  <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="OOP"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
  </div>
  </div>
<!-- /Main Content Row1  -->

  
  <hr>

  
<!-- Main Content Row2  -->
 <div class="row">
<div class="col-md-12">
   <div class="col-md-3 well">
   <input type="button" class="btn btn-success btn-sm" value="Java"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
   <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="JEE"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
   <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="OOD"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
    <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="OOD"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
 
  </div>
  </div>
<!-- /Main Content Row2  -->

   
   <hr>

   
<!-- Main Content Row3  -->  
 <div class="row">
<div class="col-md-12">
    <div class="col-md-3 well">
   <input type="button" class="btn btn-success btn-sm" value="Java"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
   
  
   <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="JEE"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
   <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="OOD"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
    <div class="col-md-3 well"> <input type="button" class="btn btn-success btn-sm" value="OOD"> x1000<hr>
   <p>You have to serch for similer question. You have to serch for similer question.</p>
  <span class="text-danger pull-right"> 12345 Question</span>
  </div>
  
  </div>
  </div>
<!-- /Main Content Row3  -->

 
  </div>
<!-- /Main Content Row  -->

   
</div>
<!-- /Main Content  -->
 
 
</div>
<!-- /Container  -->

<!-- Dialog  -->
<div id="dialog-confirm" title="You are not currently logged in">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span></p>
</div>
<!-- Dialog  -->
<!-- Footer -->
<div id="footer"></div>
<!-- /Footer -->


<!-- Script -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ajax.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-basics.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-advanced.js" type="text/javascript"></script>
 <!-- /Script -->

</body>
</html>
