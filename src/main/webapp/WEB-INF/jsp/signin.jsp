<!DOCTYPE html>
<html>
<head>
	<title>Sign in | Helpy</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="icon" href="/img/LG_Logo_White.png">
	<link rel="stylesheet" href="/css/signIn.css">
</head>
<body>

	<section name="modalTermsAndCondition">
		<div class="modal fade bd-example-modal-lg" id="termsAndConditionModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
			<div class="modal-content">
			  <div class="modal-header">
				<h5 class="modal-title">Terms and Condition</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				  <span aria-hidden="true">&times;</span>
				</button>
			  </div>
			  <div class="modal-body" id="termsAndCondition">
				<p>Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]'s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.</p>
				<p>The term '[business name]' or 'us' or 'we' refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term 'you' refers to the user or viewer of our website.</p>
				<p class="mt-2">The use of this website is subject to the following terms of use:</p>
				<ul>
					<li>
						The content of the pages of this website is for your general information and use only. It is subject to change without notice.
					</li>
					<li>
						This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties: [insert list of information].
					</li>
					<li>
						Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.
					</li>
					<li>
						Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.
					</li>
					<li>
						This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.
					</li>
					<li>
						All trade marks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.
					</li>
					<li>
						Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.
					</li>
					<li>
						From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).
					</li>
				</ul>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary registerNow">I Agree and Proceed</button>
			  </div>			  
		  </div>
		</div>
	</section>
	<section name="modalPrompt">
		<div class="modal" id="promptModal" tabindex="-1" role="dialog">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<h5 class="modal-title">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				  <span aria-hidden="true">&times;</span>
				</button>
			  </div>
			  <div class="modal-body">
				
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-primary">Save changes</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			  </div>
			</div>
		  </div>
		</div>
	</section>
	<section name="navigationBar">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="d-flex flex-row">
				  <a class="navbar-brand" href="#">
					<img src="/img/helpyLogoAlternate.png" class="navigationBarImage" width="15%" height="auto" alt="Helpy Logo">
				  </a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span><i class="material-icons bars" style="color:white;">menu</i></span>
				  </button>
			</div>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item">
				<a class="nav-link" href="index.html">Home</a>
			  </li>
			</ul>
		  </div>
		</nav>
	</section>
	<section name="Image">
<!-- 		<center>
			<h1 class="helpyLogo" style="font-family:Ubuntu; letter-spacing:-1px;">help<span style="color:#428bca;">y </h1>
		</centeR> -->
	</section>
	<section name="Screen_overlay_for_processing">
		<div class="overlay">
			<div class="loader" style="margin-top:20%;">
				Loading...
			</div>
		</div>
	</section>
	<section name="loginForm">
		<div class="d-none d-lg-block" style="margin-top:12%; margin-left:6%;">
			<div class="d-flex">
				<div class="justify-content-start loginFormSide">
					<form class="needs-validate" novalidate>
						<div class="d-flex flex-row mb-3 formInput" style="margin-left:39%;">
							<label class="mr-2" style="color:white;">Email Address</label>
							<div id="emailAddress">
								<input type="email" class="form-control username" name="username" id="Username" style="margin-left:-1px!important;" required maxlength="30">
							</div>
						</div>
						<div class="d-flex flex-row formInput mt-3" style="margin-left:43.7%; margin-top:10%;">
							<label class=" mr-2" style="color:white;">Password</label>
							<div id="passWord">
								<input type="password" class="form-control password" name="password" id="Password" required maxlength="30">
							</div>
						</div>
						<div class="alert alert-danger mt-2 text-danger validationResult1" role="alert" style="display:none; width:45%!important; margin-left:54.7%;">
							
						</div>
						<div class="alert alert-danger mt-2 text-danger validationResultPassword1" role="alert" style="display:none;width:45%!important; margin-left:54.7%;">
							
						</div>
						<button type="button" class="btn btn-primary btn-block mt-3 loginBtnDesktop" id="signInButton" style="width:48%;">
							<span class="form-inline processingText" style="display:none;">
								<div class="loader">
								</div>
								<div style="margin-left:10%;">
									Processing...
								</div>
							</span>
							<span class="LogInText">Log In</span>
							
						</button>'
					</form>
				</div>
				<div class="justify-content-center centerVerticalText ml-5 mr-5" style="margin-left:7%!important;margin-right:7%!important;">
					<div class="upperLine"></div>
					<p style="text-spacing:1px; margin-bottom:3px; margin-top:3px;">OR</p>
					<div class="lowerLine"></div>
				</div>
				<div class="justify-content-end">
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#termsAndConditionModal" style="width:175%!important; margin-top:60px;margin-left:-60px;">Become a member</button>
				</div>
			</div>
		</div>
	</section>
	<section name="tabletModeView">
		<div class="card d-none d-md-block d-lg-none" id="tabletLoginForm" style="background:transparent;">
			<div class="card-body">	
					<form class="needs-validate" novalidate>
						<label class="text-light">Email Address</label>
						
						<input type="text" class="form-control iptField username" name="usernameTablet" id="UsernameTablet" required maxlength="30">

						<label class="text-light">Password</label>
							<div id="passWord">
								<input type="password" class="form-control iptField password" name="passwordTablet" id="PasswordTablet" required maxlength="30">
							</div>
						<div class="alert alert-danger mt-2 text-danger validationResult" role="alert" style="display:none;">
							
						</div>
						<div class="alert alert-danger mt-2 text-danger validationResultPassword" role="alert" style="display:none;">
							
						</div>
						<button type="button" class="btn btn-primary btn-block mt-3 loginBtnTablet" id="signInButtonTablet">
							<span class="form-inline processingText" style="display:none;">
								<div class="loader">
								</div>
								<div style="margin-left:10%;">
									Processing...
								</div>
							</span>
							<span class="LogInText">Log In</span>
							
						</button>'
					</div>
				<div class="d-flex flex-row mt-2">
					<div id="leftSideLine"></div>
					<div class="text-light mr-2 ml-2" style="color:white!important; font-weight:bolder!important;">OR</div>
					<div id="rightSideLine"></div>
				</div>
				<button type="button" class="btn btn-primary mt-2 btn-block mx-auto" data-toggle="modal" data-target="#termsAndConditionModal" style="margin-bottom:250%; width:87%;">Become a member!</button>
			</div>
		</div>	
	
	
	
	</section>
	<section name="mobilePhoneView">
		<div class="card d-block d-sm-none" id="mobilePhoneLoginForm" style="background:transparent;">
			<div class="card-body">	
					<form class="needs-validate" novalidate>
						<label class="text-light">Email Address</label>
						
						<input type="text" class="form-control iptField username" name="usernameMobile" id="UsernameMobile" required maxlength="30">

						<label class="text-light">Password</label>
							<div id="passWord">
								<input type="password" class="form-control iptField password" name="passwordMobile" id="PasswordMobile" required maxlength="30">
							</div>
						<div class="alert alert-danger mt-2 text-danger validationResult" role="alert" style="display:none;">
							
						</div>
						<div class="alert alert-danger mt-2 text-danger validationResultPassword" role="alert" style="display:none;">
							
						</div>
						<button type="button" class="btn btn-primary btn-block mt-3 loginBtnMobile" id="signInButtonMobile">
							<span class="form-inline processingText" style="display:none;">
								<div class="loader">
								</div>
								<div style="margin-left:10%;">
									Processing...
								</div>
							</span>
							<span class="LogInText">Log In</span>
							
						</button>'
					</div>
				<div class="d-flex flex-row mt-2">
					<div id="leftSideLine"></div>
					<div class="text-light mr-2 ml-2">OR</div>
					<div id="rightSideLine"></div>
				</div>
				<button type="button" class="btn btn-primary mt-2 btn-block mx-auto" data-toggle="modal" data-target="#termsAndConditionModal" style="margin-bottom:250%; width:87%;">Become a member!</button>
			</div>
		</div>
	</section>
	<script src="/js/jquery.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="/js/signIn.js"></script>
</body>
</html>