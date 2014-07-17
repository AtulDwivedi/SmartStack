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
<title>View Question</title>
<!-- Bootstrap core CSS -->
<!-- <link href="dist//css//bootstrap.css" rel="stylesheet">
<link href="dist//css//bootstrap.min.css" rel="stylesheet">
<link href="dist//css//bootstrap-theme.css" rel="stylesheet">
<link href="dist//css//bootstrap-theme.min.css" rel="stylesheet">
<link href="dist//css//navbar-fixed-top.css" rel="stylesheet"> -->
<!-- /Bootstrap core CSS -->


</head>
<body>
<!-- Fixed navbar -->
<div  id="mystaticHdr"></div>
<!-- /Fixed navbar -->

<!-- Contaier -->
<div class="container">


<!-- Jumbotron-->
  <div class="jumbotron">
    <h2>Smart Stack</h2>
    <p>This example is a quick exercise to illustrate how the default, static and fixed to top navbar work. 
      It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
    <p class="pull-right"> 
    <a class="btn btn-default btn-primary" href="first.jsp" role="button">Questions</a> 
<a class="btn btn-default btn-primary" href="tags.jsp" role="button">Tags</a> 
<!-- <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Tour</a>  -->
   <!--  <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Users</a>  -->
<a class="btn btn-default btn-warning" href="ask.spring" role="button">Ask Question </a> 
    </p>
  </div>
<!-- /Jumbotron-->

<!--Page Header-->
<div class="page-header">
  <h1>Question</h1>
</div>
<!-- /Page Header-->


<!-- Main Content  -->
<div class="row">

<!-- Left  -->
<div class="col-md-9">

<!-- Question-->
<div class="col-md-12">
  <div class="row alert alert-warning">
    <div class="col-md-1">
      <ul class="list-unstyled">
        <li><a href="#"><img src="images/like.jpg" class="img-rounded" width="24" height="24" /></a></li>
        <li><label class="label label-info">100</label></li>
        <li><a href="#"><img src="images/dislike.jpg" class="img-rounded" width="24" height="24" /></a></li>
         <li><a href="#"><img src="images/favorite.jpg" class="img-rounded" width="24" height="24" /></a></li>
      </ul>
    </div>
    <div class="col-md-11">
      <p class="text-info"><b>This is the original question?</b></p>
      <p> This is the temporary text for the question and can be removed via original one.
        This is the temporary text for the question and can be removed via original one.
        This is the temporary text for the question and can be removed via original one.
        This is the temporary text for the question and can be removed via original one.</p>
      <hr>
     <span class="pull-left"> 
     <a class="btn btn-success btn-xs" role="button">OOP</a> 
     <a class="btn btn-success btn-xs" role="button">Java</a> 
     <a class="btn btn-success btn-xs" role="button">C++</a>
     </span>
     <span class="pull-right"> by <a role="button">Atul Dwivedi</a> on July 15, 1991 </span> </div>
  </div></div>
  <!-- /Question-->
  
  <div class="page-header">
    <h3>Answers</h3>
  </div>
  
  <!-- Answers-->
    <div class="col-md-12">
      <div class="row alert alert-success">
        <div class="col-md-1">
        
            <ul class="list-unstyled">
        <li><a href="#"><img src="resources/images/like.jpg" class="img-rounded" width="24" height="24" /></a></li>
        <li><label class="label label-info">100</label></li>
        <li><a href="#"><img src="images/dislike.jpg" class="img-rounded" width="24" height="24" /></a></li>
        
    
          </ul>
        </div>
        <div class="col-md-11">
          <p class="text-info"><b>This is the original question?</b></p>
          <p> This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.</p>
          <hr>
          <span class="pull-left">By <a href="#">Atul Dwivedi</a><b>&nbsp; Reputation: 100</b></span>
          <span class="pull-right"> July 15, 1991 </span> </div>
      </div>
    </div>
  <!-- /Answers-->
  
  
   <!-- Answers -->
    <div class="col-md-12">
      <div class="row alert alert-success">
        <div class="col-md-1">
         <ul class="list-unstyled">
        <li><a href="#"><img src="images/like.jpg" class="img-rounded" width="24" height="24" /></a></li>
        <li><label class="label label-info">100</label></li>
        <li><a href="#"><img src="images/dislike.jpg" class="img-rounded" width="24" height="24" /></a></li>
        </ul>
        </div>
        <div class="col-md-11">
          <p class="text-info"><b>This is the original question?</b></p>
          <p> This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.</p>
          <hr>
           <span class="pull-left">By <a href="#">Atul Dwivedi</a><b>&nbsp; Reputation: 100</b></span>
          <span class="pull-right"> July 15, 1991 </span> </div>
      </div>
    </div>
  <!-- /Answers-->
  
 
  
   <!-- Answers -->
    <div class="col-md-12">
      <div class="row alert alert-success">
        <div class="col-md-1">
          <ul class="list-unstyled">
        <li><a href="#"><img src="images/like.jpg" class="img-rounded" width="24" height="24" /></a></li>
        <li><label class="label label-info">100</label></li>
        <li><a href="#"><img src="images/dislike.jpg" class="img-rounded" width="24" height="24" /></a></li>
        </ul>
        </div>
        <div class="col-md-11">
          <p class="text-info"><b>This is the original question?</b></p>
          <p> This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.
            This is the temporary text for the question and can be removed via original one.</p>
          <hr>
          <span class="pull-left">By <a href="#">Atul Dwivedi</a><b>&nbsp; Reputation: 100</b></span>
          <span class="pull-right"> July 15, 1991 </span> </div>
      </div>
    </div>
  <!-- /Answers-->
  
  <!-- Solution Submission  -->
  <div class="col-mid-12">
  <hr>
  <form class="form-horizontal" action="quesSubmit.spring" method="post" role="form">
     
         <h3> <label class="label label-primary form-control">Solution Submission:</label></h3>
            <textarea class="form-control"  id="inputEmail3" name="ques" placeholder="Your solution goes here!" rows="10" ></textarea>
        
       <hr>
       <button type="submit" class="btn btn-success col-md-4 pull-right">Submit</button>
       
        
      </form>
  
  </div>
  <!--/Solution Submission  -->
   </div>
   <!-- /Left  -->
   
 <!-- Right  -->
 <div class="col-md-3">     
         <div class="list-group">
         <label class="list-group-item">Related Tags</label>
            <a href="#" class="list-group-item">C</a>
            <a href="#" class="list-group-item">C++</a>
            <a href="#" class="list-group-item">Data Structure</a>
            <a href="#" class="list-group-item">Java</a>
          </div>
        </div>
<!-- Right  -->
  
</div>
<!-- Main Content -->

</div>
<!-- Contaier -->

<!-- Footer  -->
<div id="footer"></div>
<!-- /Footer  -->

<!-- Script -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
<!-- /Script -->
</body>
</html>
