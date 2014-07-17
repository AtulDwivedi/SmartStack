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
<title>Login or Sign up</title>
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

<!-- Container -->
<div class="container">

<!-- Jumbotron  -->
		<div class="jumbotron">
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<h2>
						<img src="resources/images/Smart Stack.jpg" class="img-circle img-thumbnail"
							height="64" width="64" />&nbsp; Login
					</h2>
					<form class="form-inline" action="login.spring" method="post" role="form">
						<div class="col-sm-3">
							Email<br> <input type="email" name="email" class="form-control"
								id="exampleInputEmail2" placeholder="Enter email" /> <br>
							<label class="checkbox"> <input type="checkbox">
								Remember me
							</label>
						</div>
						<div class="col-sm-3">
							Password<br> <input type="password" name="password" class="form-control"
								id="exampleInputPassword2" placeholder="Password" /> <br>
							Forgot Password?
						</div>
						<div class="col-sm-3">
							&nbsp;<br>
							<button type="submit" class="btn btn-primary">Sign in</button>
							<br> &nbsp;
						</div>
					</form>
					<h2>Alternate Login</h2>
					<span><a href="www.facebook.com"><img src="resources/images/facebook.jpg"
						class="img-circle img-thumbnail" height="64" width="64" /></a> 
						<a href="www.google.com"><img
						src="resources/images/google.jpg" class="img-circle img-thumbnail"
						height="64" width="64" /></a> <a href="www.yahoo.com"><img src="resources/images/yahoo.jpg"
						class="img-circle img-thumbnail" height="64" width="64" /></a> 
					</span>
				</div>
			</div>
		</div>
<!-- /Jumbotron  -->

<!-- Main Body -->
<div class="row">

<!-- Main Body Heading -->
  <div class="col-xs-12 col-md-12">
   <h3>Create an account</h3> <hr>
</div>
<!-- /Main Body Heading -->

<!-- Left -->
    <div class="col-xs-6 col-md-8">
    <div class="well">
    <h3>How it works?</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur.</p><p>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur.</p>
    </div>
    </div>
<!-- /Left -->
   
<!-- Right  -->
    <div class="col-xs-12 col-md-4">
<!-- Create Account From  -->
      <form class="form-horizontal" action="register.spring" method="post" role="form">
        <div class="form-group">
          <div class="col-sm-10">
           <!--<label for="inputName3" class="col-sm-2 control-label">Name</label>-->
            <input type="text" class="form-control" id="inputEmail3" name="name" placeholder="Name">
          </div>
        </div>
        
        <div class="form-group">
          <!--<label for="inputEmail3" class="col-sm-2 control-label">Email</label>-->
          <div class="col-sm-10">
            <input type="email" class="form-control" id="email" name="emailId" placeholder="Email">
            <h6 id="info" style="color: red"></h6> 
          </div>
        </div>
        
        <div class="form-group">
          <!--<label for="inputPassword3" class="col-sm-2 control-label">Password</label>-->
          <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password">
          </div>
        </div>
        
        <div class="form-group">
          <!--<label for="inputPassword3" class="col-sm-2 control-label">Confirm</label>-->
          <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Confirm Password">
          </div>
        </div>
       
        <div class="form-group">
        
        <div class="col-sm-10">
        <!--   <label class="form-control label-primary">Date of Birth</label> -->
           <!--<label for="inputName3" class="col-sm-2 control-label">Name</label>-->
            <input type="text" class="form-control" id="start-date" name="dob" placeholder="DD-MM-YYYY">
          </div>
        </div>
       
          <!-- <div class="col-sm-10"> 
          	  
             <label class="form-control label-primary">Date of Birth</label>
            <span class="col-sm-4">
                <select class="form-control">
                	<option>Day</option><option>1</option><option>2</option><option>3</option><option>4</option>
                </select>
            </span> 
            
            <span class="col-sm-4">
                <select class="form-control">
                  <option>Month</option><option>Jan</option><option>Feb</option><option>March</option><option>April</option>
                </select>
            </span> 
            
            <span class="col-sm-4">
                <select class="form-control">
                  <option>Year</option><option>1990</option><option>1992</option><option>1993</option><option>1994</option>
                </select>
            </span> 
           </div> -->
       
       
        <button type="submit" class="btn <!--btn-lg--> btn-primary col-sm-10">Create Account</button>

      </form>
<!-- /Create Account From  --> 
    </div>
<!-- /Right  --> 
    
    
   
  </div>
<!-- /Main Body -->  
  
</div>
<!-- /Container -->

<!-- Footer -->
<div id="footer"></div>
<!-- /Footer -->


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
