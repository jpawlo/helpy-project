<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Sign up | Helpy</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="/img/LG_Logo_White.png">	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="/css/signUp.css">
	<link rel="stylesheet" href="/css/popoverStyle.css">
	<link rel="stylesheet" href="/css/loader.css">
</head>
<body>
	<section name="overlay">
		<div id="myOverlay">
			<center>
				<div class="sk-folding-cube overlayContent loadingContent" style="display:none;" id="loader">
				  <div class="sk-cube1 sk-cube"></div>
				  <div class="sk-cube2 sk-cube"></div>
				  <div class="sk-cube4 sk-cube"></div>
				  <div class="sk-cube3 sk-cube"></div>
				</div>	
				<h3 class="loadingContent" style="color:white; z-index:100; margin-top:3%;">Please wait...</h3>
				<div id="confirmationText" class="overlayContent" style="display:none; margin-top:10%;">
					<h1 style="z-index:100; color:white;">Please check your Email used in creating <span style="font-family:Ubuntu; font-weight:bolder; font-size:120%; letter-spacing:-3px;">help<span style="color:#428bca;">y</span></span> account</h1>
					<br><br>
					<a class="backToHome text-primary" href="/" style="text-decoration:none;">Back to home</a>
				</div>
			</center>
		</div>
	</section>
	<section name="modals">
		<div class="modal fade" id="promptModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header modalHeader">
				<h5 class="modal-title text-light" id="modalHeader">Modal title</h5>
				<button type="button okayButton" class="close" data-dismiss="modal" aria-label="Close">
				  <span class="text-light okayButton" aria-hidden="true">&times;</span>
				</button>
			  </div>
			  <div class="modal-body" id="modalMessage">
				
			  </div>
			  <div class="modal-footer">
				<!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
				<button type="button" class="btn btn-secondary mx-auto okayButton">Okay</button>
			  </div>
			</div>
		  </div>
		</div>
	</section>
	<section name="navigationBar">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="d-flex flex-row">
				  <a class="navbar-brand" href="/">
					<img src="/img/helpy logo alternate.png" class="navigationBarImage" width="15%" height="auto" alt="Helpy Logo">
				  </a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" style="border:none;">
					<span><i class="material-icons bars" style="font-size:300%; color:white;">menu</i></span>
				  </button>
			</div>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item">
				<a class="nav-link" href="/">Home </a>
			  </li>
			</ul>
		  </div>
		</nav>
	</section>	
	
	<section name="RegistrationForm">
		<div class="card mx-auto" style="width:25%; margin-top:5%;">
			<div class="card-body">
				<h1 class="upperText">
					Be a member of
					<span class="shiningText" style="font-family:Ubuntu; font-weight:bolder; letter-spacing:-3px; font-size:120%;">
						help<span style="color:#428bca;">y</span>
					</span> 
					today
				</h1>
				<form method="post" class="mx-auto needsvalidate mt-4">
					<center>
						<input type="text" class="form-control mb-2" placeholder="Name" name="name" id="userName" required maxlength=50 minlength=5 data-container="body" data-toggle="popover" data-placement="right" data-content="">
						<input type="email" class="form-control mb-2" placeholder="Email Address" id="emailAddress" name="email_address" required minlength=2 data-container="body" data-toggle="popover" data-placement="right" data-content="">
						<input type="text" class="form-control mb-2" placeholder="fb.com/YourUserName" id="socialMediaAcct" name="social_media" required minlength=2 data-container="body" data-toggle="popover" data-placement="right" data-content="">
						<input type="number" class="form-control mb-2" placeholder="ID Number(optional)" name="id_number" minlength=5 maxlength=12>
				 		<div class="input-group mb-2" id="telephoneNumber">
							<div class="input-group-prepend">
								<span class="input-group-text" id="phPhone">+63</span>
							</div>
							<input type="tel" class="form-control" placeholder="Phone Number" aria-describedly="phPhone" id="phoneNumber" name="phone_number" minlength=9 maxlength=10 required data-container="body" data-toggle="popover" data-placement="right" data-content="">
						</div> 
						<input type="password" class="form-control mb-4" placeholder="Password" id="passWord" name="password" required minlength=8 maxlength=20>
						
		<!-- 				<div class="input-group mb-3"> -->

						<div class="alert alert-danger alertMessage text-danger" role="alert">
							
						</div>
						<div class="d-flex flex-row justify-content-end mt-3 mb-2 formBtn">
							<button type="button" class="btn btn-secondary mr-2 cancelButton">Cancel</button>
							<button type="submit" class="btn btn-primary mr-3 signUp">Sign Up</button>
						</div>
						<a href="signin.html" style="text-decoration:none; width:100%!important; margin:auto!important" id="alreadyHaveAccount" class="mt-2">
							<small class="text-primary" style="cursor:default;">I already have account</small>
						</a>
					</center>
				</form>
			</div>
		</div>
		
	</section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="/js/signUp.js"></script>	
	
	
</body>
</html>