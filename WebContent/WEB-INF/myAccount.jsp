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
<title>Welcome to SmartStack</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">


<script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>





<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.css" rel="stylesheet">
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

<!-- Container -->
<div class="container">


<div class="row">
<div class="col-xs-12 col-md-12">
   <h3>${key.session.name }</h3> <hr>
</div>
<div class="col-md-12">
<div class="col-md-3">
<img alt="${key.session.emailId}" src="resources/images/default_image.jpg" class="thumbnail" />
</div>
<div class="col-md-9">
<span>Name:</span><span>${key.session.name}</span><br>
<span>Email ID:</span><span>${key.session.emailId }</span><br>
<span>Date of Birth:</span><span>${key.session.dob }</span><br>
<span>Reputation:</span><span>${0}</span><br><hr>
<span><a href="update.spring" class="btn btn-default btn-primary">Update Account</a></span>
</div>
</div>
</div>
<hr>
<div class="row">
<div class="col-md-12">







  <div class="col-md-12">
  <div class="col-md-12">
  <fieldset>
<legend>Quick Summary</legend>
<div id="static-tabbed-panel-div">
  <ul>
    <li><a href="#panel1">Questions</a></li>
    <li><a href="#panel2">Answers</a></li>
    <li><a href="#panel3">Badges</a></li>
     <li><a href="#panel4">Favourit Questions</a></li>
  </ul>
  <div id="panel1">

    <ul class="list-unstyled">
  <c:forEach var="list" items="${key.list }">
 <li>
   <span class="badge">${list.votes }</span> <span><b>Votes</b></span>
  <a href="solution.spring?quesId=${list.quesId}"> ${list.quesTitle}</a>
  </li>
  </c:forEach>
</ul>
  </div>
  <div id="panel2">
     <ul class="list-unstyled">
  <c:forEach var="solList" items="${key.solList }">
 <!--  <li class="list-group-item"> --><li>
    <span class="badge">${solList.votes }</span> <span><b>Votes</b></span>
  <a href="solution.spring?quesId=${solList.quesId}"> ${solList.solution}</a>
  </li>
  </c:forEach>
</ul>
  </div>
  <div id="panel3">
   <ul class="list-unstyled">
  <c:forEach var="badge" items="${key.session.badges }">
 <li><span class="badge">${badge.badgeId }</span> <span><b>${badge.badgeName}</b></span> </li>
  </c:forEach>
</ul>
  </div>
  <div id="panel4">
  
  <ul class="list-unstyled">
  <c:forEach var="myFavQues" items="${key.myFavQuesList}">
 <!--  <li class="list-group-item"> --><li>
    <span class="badge">${myFavQues.votes }</span> <span><b>Votes</b></span>
  <a href="solution.spring?quesId=${myFavQues.quesId}"> ${myFavQues.quesTitle}</a>
  </li>
  </c:forEach>
</ul>

  </div>
</div>
</fieldset>
  <%-- <ul class="list-unstyled">
  <c:forEach var="list" items="${key.list }">
 <!--  <li class="list-group-item"> --><li>
    <span class="badge">${list.votes }</span>
  <a href="solution.spring?quesId=${list.quesId}"> ${list.quesTitle}</a>
  </li>
  </c:forEach> 
</ul>
--%>
</div></div>


<div class="col-md-0">
<div class="col-md-12"> 

 


</div>
</div> 

</div>

</div>



</div>
<!-- /Container -->


<!-- Footer -->
 <div class="container">
    <hr />
    <p class="text-muted credit">&copy;All rigth reserved. Smart Stack :)</p>
  </div>
<!-- /Footer -->

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
