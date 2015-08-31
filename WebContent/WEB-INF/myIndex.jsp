<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
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
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css"
	rel="stylesheet">
<link href='${pageContext.request.contextPath}/resources/css/demo.css'
	rel='stylesheet' media='screen' />
<link
	href='${pageContext.request.contextPath}/resources/css/confirm.css'
	rel='stylesheet' media='screen' />
<link
	href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.css"
	rel="stylesheet">
<!-- /Bootstrap core CSS -->
<style type="text/css">
span.glyphicon {
	font-size: 2.0em;
}
span.glyphicon-search {
	font-size: 1.0em;
}
span.glyphicon-hover {
	font-size: 1.3em;
}
</style>
</head>
<body>

	<%@include file="../common/session.jsp"%>

	<!-- Fixed navbar -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="navbar-header">
						<a class="navbar-brand" href="myIndex.spring?page=1&pagesize=5">SmartStack</a>
					</div>
				</div>
				<!-- <div class="col-md-2">
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="myIndex.spring?page=1&pagesize=5"> <span
									class="glyphicon glyphicon-home" class="glyphicon.smaller"></span></a>
							</li>

							<li><a href="#about">About Us</a></li>
							<li><a href="contact-us.jsp">Contact</a></li>
						</ul>
					</div>
				</div> -->
				<div class="col-md-7">
					<div class="navbar-collapse collapse" style="margin-top: 10px">
					
					<div class="row">
					
						<div class="input-group">
							<div class="input-group-btn">
								<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" data-hover="dropdown">
										All <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li>
										<div style="float:left;width:100%;text-align:center">
										<a href="myIndex.spring?page=1&pagesize=5">
										<div style="float:left;width:20%;">
										 <span class="glyphicon glyphicon-th glyphicon-hover"></span>
											</div>
											<div style="float:left;width:60%;text-align:left;">All</div>
							<div style="float:left;width:20%"><span class="glyphicon glyphicon-ok glyphicon-hover"></div>
											</a>
											</div>
										</li>
										
										<li>
										<div style="float:left;width:100%;text-align:center"">
										<a href="myIndex.spring?page=1&pagesize=5">
										<div style="float:left;width:20%;">
										 <span class="glyphicon glyphicon-tags glyphicon-hover"></span>
											</div>
											<div style="float:left;width:60%;text-align:left;">Tag</div>
							<div style="float:left;width:20%"><span class="glyphicon glyphicon-ok glyphicon-hover"></div>
											</a>
											</div>
										</li>
										<li>
										<div style="float:left;width:100%;text-align:center">
										<a href="myIndex.spring?page=1&pagesize=5">
										<div style="float:left;width:20%;">
										 <span class="glyphicon glyphicon-question-sign glyphicon-hover"></span>
											</div>
											<div style="float:left;width:60%;text-align:left;">Question</div>
							<div style="float:left;width:20%"><span class="glyphicon glyphicon-ok glyphicon-hover"></div>
											</a>
											</div>
										<li>
										<div style="float:left;width:100%;text-align:center">
										<a href="myIndex.spring?page=1&pagesize=5">
										<div style="float:left;width:20%;">
										 <span class="glyphicon glyphicon-info-sign glyphicon-hover"></span>
											</div>
											<div style="float:left;width:60%;text-align:left;">Solution</div>
							<div style="float:left;width:20%"><span class="glyphicon glyphicon-ok glyphicon-hover"></div>
											</a>
											</div>
										<li>
										<div style="float:left;width:100%;text-align:center">
										<a href="myIndex.spring?page=1&pagesize=5">
										<div style="float:left;width:20%;">
										 <span class="glyphicon glyphicon-user glyphicon-hover"></span>
											</div>
											<div style="float:left;width:60%;text-align:left;">People</div>
							<div style="float:left;width:20%"><span class="glyphicon glyphicon-ok glyphicon-hover"></div>
											</a>
											</div>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul>
							</div>
						<input class="form-control" type="text" placeholder="search" />
					<div class="input-group-btn">
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</div>
					</div>
					
					</div>
						</div>
					</div>
				<!-- </div> -->
			
			<div class="col-md-3">
				<!-- <div class="navbar-collapse collapse"> -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="myIndex.spring?page=1&pagesize=5"> <span
							class="glyphicon glyphicon-bell" class="glyphicon.smaller"></span></a></li>
					<li><a href="myIndex.spring?page=1&pagesize=5"> <span
							class="glyphicon glyphicon-tags" class="glyphicon.smaller"></span></a></li>
					<li><a href="myIndex.spring?page=1&pagesize=5"> <span
							class="glyphicon glyphicon-question-sign"
							class="glyphicon.smaller"></span></a></li>
					<li class="dropdown"><a href="#"
						class="dropdown-toggle js-activated" data-toggle="dropdown">${key.session.name
							}<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="myAccount.spring">My Account</a></li>
							<li class="divider"></li>
							<li><a tabindex="-1" href="#">Change Email</a></li>
							<li><a tabindex="-1" href="#">Change Password</a></li>
							<li class="divider"></li>
							<li><a tabindex="-1" href="logout.spring">Logout</a></li>
						</ul></li>
				</ul>
				<!-- </div> -->
			</div>
		</div>


	</div>
	</div>
	<!-- /container -->
	<!-- /Fixed navbar -->

	<!-- Container -->
	<div class="container">

		<!-- Jumbotron -->
		<div class="jumbotron">
			<h2>Smart Stack</h2>
			<%-- <form action="myAccount.spring", method="post"><input type="submit" value="<c:out value="${key.session.emailId }"></c:out>"></form> --%>
			</h2>
			<p>Smart Stack is a question and answer site for professional and
				enthusiast programmers. Programmers can submit their technical
				problem and ask for solution.</p>
			<p class="pull-right">
				<a class="btn btn-default btn-primary" href="index.html"
					role="button">Questions</a> <a class="btn btn-default btn-primary"
					href="tags.html" role="button">Tags</a> <a
					class="btn btn-default btn-primary" href="tour.html" role="button">Tour</a>
				<a class="btn btn-default btn-primary"
					href="../../components/#navbar" role="button">Users</a> <a
					class="btn btn-default btn-warning" href="ask.spring" role="button">Ask
					Question </a>
			</p>
		</div>
		<!-- /Jumbotron-->

		<!-- Main content  -->
		<div class="row">
			<div class="col-md-9">

				<div class="col-md-12">

					<!-- Uper Links -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="mySort.spring?sortBy=top">Top
								problems</a></li>
						<li><a href="mySort.spring?sortBy=newest">Newest</a></li>
						<li><a href="mySort.spring?sortBy=featured">Featured</a></li>
						<li><a href="mySort.spring?sortBy=popular">Popular</a></li>
						<li><a href="mySort.spring?sortBy=hot">Hot</a></li>
					</ul>
					<br>
					<!-- /Uper Links -->

					<!-- Question-->
					<c:forEach var="ques" items="${key.list}">
						<div class="row alert alert-warning">
							<div class="col-md-2">
								<ul class="nav nav-pills nav-stacked">
									<li class="active"><a> <span class="badge pull-right">${ques.votes
												}</span> Votes
									</a></li>
									<li class="active"><a> <span class="badge pull-right">${ques.ans
												}</span> Ans.
									</a></li>
								</ul>
								<%-- <ul class="list-inline">
<li class="list-group-item text-center">${ques.votes } <br> Votes</li>
<li class="list-group-item text-center">${ques.ans }<br>Ans.</li>
</ul> --%>
							</div>
							<div class="col-md-10">
								<p class="text-info">
									<b><a href="solution.spring?quesId=${ques.quesId }">${ques.quesTitle
											}</a></b>
								</p>

								<hr>
								<c:forEach var="tag" items="${ques.tagList}">
									<span class="pull-left"> <a
										class="btn btn-success btn-xs" href="tags.jsp" role="button">${tag
											}</a>
									</span>
								</c:forEach>
								<span class="pull-right"> by <a role="button">${ques.name
										}</a> ${ques.date }
								</span>
							</div>
						</div>
					</c:forEach>
					<!-- /Question-->

					<hr />
				</div>


				<!-- Paggination -->
				<ul class="pagination pagination-lg pull-left">
					<li><a href="myIndex.spring?page=1&pagesize=5">5</a></li>
					<li><a href="myIndex.spring?page=1&pagesize=10">10</a></li>
					<li><a href="myIndex.spring?page=1&pagesize=15">15</a></li>
				</ul>
				<!-- /Paggination -->


				<!-- Paggination -->
				<ul class="pagination pagination-lg pull-right">

					<!-- Paggination for Previous  -->

					<%--For displaying Previous link except for the 1st page --%>
					<c:if test="${key.pageNo != 1}">
						<li><a
							href="myIndex.spring?page=${key.pageNo - 1}&pagesize=${key.pagesize}">Previous&nbsp;</a></li>
					</c:if>
					<!-- Paggination for Previous  -->

					<c:forEach begin="1" end="${(key.length)}" var="i">
						<c:choose>
							<c:when test="${key.pageNo eq i}">
								<li><a class="disabled">${i}</a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="myIndex.spring?page=${i}&pagesize=${key.pagesize}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>


					<!-- Pagging for Next -->
					<c:if test="${key.pageNo lt key.length}">
						<li><a
							href="myIndex.spring?page=${key.pageNo + 1}&pagesize=${key.pagesize}">Next&nbsp;</a></li>
					</c:if>
					<!-- Pagging for Next -->

				</ul>
				<!-- /Paggination -->


			</div>

			<!-- Career -->
			<div class="col-md-3">
				<div class="col-md-12">
					<div class="row">
						<div class="list-group sidebar-offcanvas">
							<a href="#" class="list-group-item active">
								<h3 class="list-group-item-heading">CAREERS</h3>
								<p class="list-group-item-text">Career Related feeds goes
									here!</p>
							</a> <a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">Ruby on Rail(RoR)</h4>
								<p class="list-group-item-text">
									Technical Lead, Sourcebits <br />Bangalore, India
								</p>
							</a> <a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">iOS</h4>
								<p class="list-group-item-text">
									Technical Lead, Sourcebits <br />Bangalore, India
								</p>
							</a> <a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">Java, JEE</h4>
								<p class="list-group-item-text">
									Technical Lead, Sourcebits <br />Bangalore, India
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /Career -->

		</div>
		<!-- Main content  -->



	</div>
	<!-- /Container -->


	<!-- Footer -->
	<div class="container">
		<hr />
		<p class="text-muted credit">&copy;All rigth reserved. Smart Stack</p>
	</div>
	<!-- /Footer -->

	<!-- modal content -->
	<div id='confirm'>
		<div class='header'>
			<span>Confirm</span>
		</div>
		<div class='message'></div>
		<div class='buttons'>
			<div class='no simplemodal-close'>No</div>
			<div class='yes'>Yes</div>
		</div>
	</div>
	<!-- /modal content -->

	<!-- Script -->


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/smartstack-hover-dropdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ajax.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-basics.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-advanced.js"
		type="text/javascript"></script>
	<!-- latest jQuery, Boostrap JS and hover dropdown plugin -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-hover-dropdown.js"></script>

	<script>
    // very simple to use!
    /* $(document).ready(function() {
      $('.js-activated').dropdownHover().dropdown();
    }); */
  </script>
	<!-- /Script -->
</body>
</html>
