<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- <link rel="shortcut icon" href="resources/images/favicon.ico">
<title>Welcome to SmartStack</title> -->
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
<%-- <link
	href='${pageContext.request.contextPath}/resources/css/confirm.css'
	rel='stylesheet' media='screen' /> --%>
<link
	href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css"
	rel="stylesheet">
<%-- <link
	href="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.css"
	rel="stylesheet"> --%>
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

	<!-- Fixed navbar -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="navbar-header">
						<a class="navbar-brand" href="myIndex.spring?page=1&pagesize=5">SmartStack</a>
					</div>
				</div>
				<div class="col-md-7">
					<div class="navbar-collapse collapse" style="margin-top: 10px">

						<div class="row">

							<div class="input-group">
								<div class="input-group-btn">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" data-hover="dropdown">
										All <span class="caret"></span>
									</button>
									<!-- <ul class="dropdown-menu" role="menu">
										<li><a href="#">Tag</a></li>
										<li><a href="#">Question</a></li>
										<li><a href="#">Solution</a></li>
										<li><a href="#">People</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul> -->
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
						<li><a href="tags.jsp"> <span
								class="glyphicon glyphicon-tags" class="glyphicon.smaller"></span></a></li>
						<li><a href="Login_Signup.jsp"> <span
								class="glyphicon glyphicon-question-sign"
								class="glyphicon.smaller"></span></a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle js-activated" data-toggle="dropdown">Guest<b
								class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="Login_Signup.jsp">Login/Sign
										Up</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#">About Us</a></li>
								<li><a tabindex="-1" href="#">Contact Us</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="logout.spring">Feedback</a></li>
							</ul></li>
					</ul>
					<!-- </div> -->
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<!-- /Fixed navbar -->


	<!-- Script --><script src="${pageContext.request.contextPath}/resources/js/smartstack-hover-dropdown.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-hover-dropdown.js"></script>
	
	<!-- latest jQuery, Boostrap JS and hover dropdown plugin -->
	
	<!-- <script>
		// very simple to use!
		$(document).ready(function() {
			$('.js-activated').dropdownHover().dropdown();
		});
	</script> -->
	<!-- /Script -->
	
</body>
</html>
