<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css" rel="stylesheet">
<!-- /Bootstrap core CSS -->
</head>
<body>
<%@include file="../common/session.jsp"%>
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

<!-- Contaier -->
<div class="container">


<!-- Jumbotron-->
  <div class="jumbotron">
    <h2>Smart Stack</h2>
    <p>Smart Stack is a question and answer site for professional and enthusiast programmers. 
Programmers can submit their technical problem and ask for solution.</p>
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
        <li><a href="#" id="likeQues"><img src="resources/images/like.jpg" class="img-rounded" width="24" height="24" /></a></li>
        <li><label class="label label-info" id="quesVotes">${key.ques.votes}</label></li>
        <li><a href="#" id="disLikeQues"><img src="resources/images/dislike.jpg" class="img-rounded" width="24" height="24" /></a></li>
         
         <!-- Favourit Question Logic  -->
                <c:choose>
                    <c:when test="${key.fav eq 1}">
                      <!--  <li><a id="makeFavQues" href="#"><img src="resources/images/favorite.jpg" class="img-rounded" width="24" height="24" /></a></li> -->
                    </c:when>
                    <c:otherwise>
                        <li><a id="makeFavQues" href="#"><img src="resources/images/favorite.jpg" class="img-rounded" width="24" height="24" /></a></li>
                    </c:otherwise>
                </c:choose>
         <!-- /Favourit Question Logic -->
         
         
         
         
         
         
         
         
         
      
      </ul>
    </div>
    <div class="col-md-11">
      <p class="text-info"><b>${key.ques.quesTitle}</b></p>
      <p>${key.ques.ques}</p>
      <hr>
      <c:forEach var="tag" items="${key.ques.tagList}">
     <span class="pull-left"> 
     <a class="btn btn-success btn-xs" role="button">${tag}</a> 
     <!-- <a class="btn btn-success btn-xs" role="button">Java</a> 
     <a class="btn btn-success btn-xs" role="button">C++</a> -->
     </span></c:forEach>
     <span class="pull-right"> by <a role="button">${key.ques.name}</a> on ${key.ques.date} </span> </div>
  </div>
  <input type="hidden" id="quesId" value="${key.ques.quesId }">
  </div>
  <!-- /Question-->
  
   <div class="page-header">
    <h3>Answers</h3>
  </div>
 
  
  <!-- Answers-->
  <c:forEach var="sol" items="${key.sol}">
    <div class="col-md-12">
      <div class="row alert alert-success">
        <div class="col-md-1">
        
            <ul class="list-unstyled">
        <li><a href="#" id="likeSol"><img src="resources/images/like.jpg" class="img-rounded" width="24" height="24" /></a></li>
        <li><label class="label label-info" id="solVotes">${sol.votes}</label></li>
        <li><a href="#" id="disLikeSol"><img src="resources/images/dislike.jpg" class="img-rounded" width="24" height="24" /></a></li>
        
    
          </ul>
        </div>
        <div class="col-md-11">
          <p class="text-info"> ${sol.solution}</p>
          <hr>
          <span class="pull-left">By <a href="#">${key.session.name}</a><b>&nbsp; Reputation: 100</b></span>
          <span class="pull-right"> ${sol.date}</span> </div>
      </div> <input type="hidden" id="solId" value="${sol.solId }">
    </div>
    </c:forEach>
  
  <!-- /Answers-->
  
  
  
  <!-- Solution Submission  -->
  <div class="col-mid-12">
  <hr>
  <form class="form-horizontal" action="submitSolution.spring?quesId=${key.ques.quesId}" method="post" role="form">
     
         <h3> <label class="label label-primary form-control">Solution Submission:</label></h3>
            <textarea class="form-control"  id="inputEmail3" name="solutionText" placeholder="Your solution goes here!" rows="10" ></textarea>
        
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
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ajax.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.js"  type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-basics.js" type="text/javascript"></script>
<!-- /Script -->
</body>
</html>
