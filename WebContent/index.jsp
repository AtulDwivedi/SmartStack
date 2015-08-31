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

</head>
<body>
	<!-- Fixed navbar -->
	<div id="mystaticHdr"></div>
 	<!-- /Fixed navbar -->
 
	<!-- Container -->
	<div class="container">

		<!-- Jumbotron -->
		<div class="jumbotron">
			<h2>Smart Stack</h2>
			<p>Smart Stack is a question and answer site for professional and
				enthusiast programmers. Programmers can submit their technical
				problem and ask for solution.</p>
			<p class="pull-right">
				<a class="btn btn-default btn-primary disabled" href="first.jsp"
					role="button">Questions</a> <a class="btn btn-default btn-primary"
					href="tags.jsp" role="button">Tags</a>
				<!-- <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Tour</a>  -->
				<!--  <a class="btn btn-default btn-primary" href="../../components/#navbar" role="button">Users</a>  -->
				<a class="btn btn-default btn-warning" id="idForAuthCheck" href="#"
					role="button">Ask Question </a>
			</p>
		</div>
		<!-- /Jumbotron-->

		<!-- Main content  -->
		<div class="row">
			<div class="col-md-9">

				<div class="col-md-12">

					<!-- Uper Links -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="sort.spring?sortBy=top">Top
								problems</a></li>
						<li><a href="sort.spring?sortBy=newest">Newest</a></li>
						<li><a href="sort.spring?sortBy=featured">Featured</a></li>
						<li><a href="sort.spring?sortBy=popular">Popular</a></li>
						<li><a href="sort.spring?sortBy=hot">Hot</a></li>
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
									<b><a href="publicSolution.spring?quesId=${ques.quesId}">${ques.quesTitle
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
										}</a> on ${ques.date}
								</span>
							</div>
						</div>
					</c:forEach>
					<!-- /Question-->

					<hr />
				</div>


				<!-- Paggination -->
				<%-- <ul class="pagination pagination-lg pull-left">
<li><a href="index.spring?page=${key.pageNo}&pagesize=5">5</a></li>
  <li><a href="index.spring?page=${key.pageNo}&pagesize=10">10</a></li>
  <li><a href="index.spring?page=${key.pageNo}&pagesize=15">15</a></li>
</ul> --%>

				<ul class="pagination pagination-lg pull-left">
					<li><a href="indexReal.spring?page=1&pagesize=5">5</a></li>
					<li><a href="indexReal.spring?page=1&pagesize=10">10</a></li>
					<li><a href="indexReal.spring?page=1&pagesize=15">15</a></li>
				</ul>
				<!-- /Paggination -->


				<!-- Paggination -->
				<ul class="pagination pagination-lg pull-right">

					<!-- Paggination for Previous  -->

					<%--For displaying Previous link except for the 1st page --%>
					<c:if test="${key.pageNo != 1}">
						<li><a
							href="indexReal.spring?page=${key.pageNo - 1}&pagesize=${key.pagesize}">Previous&nbsp;</a></li>
					</c:if>
					<!-- Paggination for Previous  -->

					<c:forEach begin="1" end="${(key.length)}" var="i">
						<c:choose>
							<c:when test="${key.pageNo eq i}">
								<li><a class="disabled">${i}</a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="indexReal.spring?page=${i}&pagesize=${key.pagesize}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>


					<!-- Pagging for Next -->
					<c:if test="${key.pageNo lt key.length}">
						<li><a
							href="indexReal.spring?page=${key.pageNo + 1}&pagesize=${key.pagesize}">Next&nbsp;</a></li>
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

		<!-- Dialog  -->
		<div id="dialog-confirm" title="You are not currently logged in">
			<p>
				<span class="ui-icon ui-icon-alert"
					style="float: left; margin: 0 7px 20px 0;"></span>
			</p>
		</div>
		<!-- Dialog  -->

	</div>
	<!-- /Container -->


	<!-- Footer -->
	<div id="footer"></div>
	<!-- /Footer -->

	<!-- Script -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
	
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
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-hover-dropdown.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/smartstack-hover-dropdown.js"></script>
	
	
</body>
</html>
