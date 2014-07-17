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
      <a class="navbar-brand" href="index.html"> SmartStack</a> </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="index.html">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="myAccount.spring">${key.name }</a></li>
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
   <h3>${key.name }</h3> <hr>
</div>
<div class="col-md-12">
<div class="col-md-3">
<img alt="Change Picture" src="resources/images/default_image.jpg" class="thumbnail" />
</div>
<div class="col-md-9">

 <form class="form-horizontal" action="updateData.spring" method="post" role="form">
        <div class="form-group">
         <label for="inputName3" class="col-sm-2 control-label">Name</label>
          <div class="col-sm-10">
          
            <input type="text" class="form-control" id="inputEmail3" name="name" value="${key.name }">
          </div>
        </div>
        
        <div class="form-group">
          <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="inputEmail3" name="emailId" value="${key.emailId }">
          </div>
        </div>
        
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">Date of Birth</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassword3" name="dob" value="${key.dob }">
          </div>
        </div>
       
       <div class="form-group">
          
          <div class="col-sm-10">
            <input type="hidden" class="form-control" id="inputPassword3" name="password" value="${key.password }">
             <input type="hidden" class="form-control" id="inputPassword3" name="userId" value="${key.userId }">
          </div>
        </div>
      
       
        <button type="submit" class="btn btn-primary col-sm-3 pull-right">Update</button>

      </form>
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
