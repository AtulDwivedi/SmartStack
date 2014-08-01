<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
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
<link
	href="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.css"
	rel="stylesheet">

<!-- /Bootstrap core CSS -->
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0;
	padding: 0
}

#map-canvas {
	height: 100%
}
</style>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCZOwimIU-TG-tgLDRbqJKCkscIKIvddgk&sensor=false">
	
</script>
<script type="text/javascript">
	function initialize() {
		var mapOptions = {
			center : new google.maps.LatLng(12.98949, 77.65212),
			zoom : 16
		};
		var map = new google.maps.Map(document.getElementById("map-canvas"),
				mapOptions);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
	<!-- Fixed navbar -->
	<div id="mystaticHdr"></div>
	<!-- /Fixed navbar -->

	<!-- Container -->
	<div class="container" style="margin-top: 60px;">

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
		<div class="row">

			<div class="col-xs-6 col-md-6">
				<div class="well">
					<b>C-DAC Bengaluru</b><br> No.1, Old Madras Road<br>
					Byappanahalli<br> Bengaluru - 560038<br> Karnataka
					(India)<br> Phones: +91-80-6611 6400/01/02/03,
					25244059/25246823/25246826<br> Fax: +91-80-2524-7724<br>


				</div>
			</div>
			<div class="col-xs-6 col-md-6">
				Google Map
				<div id="map-canvas"></div>
			</div>


		</div>
	</div>
	<!-- Container -->

	<!-- Footer -->
	<div id="footer"></div>
	<!-- /Footer -->

	<!-- Script -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
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
	<!-- /Script -->
</body>
</html>