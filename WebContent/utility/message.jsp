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
<title>Welcome to SmartStack</title>

</head>
<body>
<!-- Fixed navbar -->
<div  id="mystaticHdr"></div>
<!-- /Fixed navbar -->

<!-- Container -->
<div class="container">

<!-- Jumbotron -->
<div class="jumbotron">
<h2>Message</h2><%
Object message = request.getAttribute("message");
if(message != null){
	out.write(message.toString());
	
}
%>
<c:out value="You are not logged in currently, Press here to "></c:out><a href='Login_Signup.jsp'>Login/Signup</a>
</p>
<p class="pull-right"> 
<a class="btn btn-default btn-primary" href="index.html" role="button">Questions</a> 
<a class="btn btn-default btn-primary" href="tags.html" role="button">Tags</a> 
<a class="btn btn-default btn-primary" href="tour.html" role="button">Tour</a> 
<a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Users</a>
<a class="btn btn-default btn-warning" href="ask.html" role="button">Ask Question </a> 
</p>
</div>
<!-- /Jumbotron-->
</div>
<!-- /Container -->


<!-- Footer -->
<div id="footer"></div>
<!-- /Footer -->

<!-- Script -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
<!-- /Script -->
</body>
</html>