<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/LG_Logo_White.png">	
	<title>Index | Helpy</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="css/index.css">
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
				<a href="signup.html" class="btn btn-primary registerNow">I Agree and Proceed</a>
			  </div>			  
		  </div>
		</div>
	</section>
	<section name="navigationBar">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="d-flex flex-row">
				  <a class="navbar-brand" href="#">
					<img src="img/helpy logo alternate.png" class="navigationBarImage" width="15%" height="auto" alt="Helpy Logo">
				  </a>
				  <button class="navbar-toggler btnMenuBars" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span><i class="material-icons bars menuFourBars" style="font-size:300%; color:black;">menu</i></span>
				  </button>
			</div>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item">
				<a class="nav-link" href="#">Opportunities</a>
			  </li>		  
			  <%
			  	if(!String.valueOf(session.getAttribute("user_id")).isEmpty()) {
			  %>
			  	  <li class="nav-item">
					<a class="nav-link" href="/profile">My Profile</a>
				  </li> 

			  <%}
			  	else{ %>
				  <li class="nav-item">
					<a class="nav-link" href="/signin">Log In</a>
				  </li>
					<li class="nav-item">
						<button class="btn btn-outline-primary" type="button" data-toggle="modal" data-target="#termsAndConditionModal">Join us</button>
					  </li>
				
			 <% } %>

			</ul>
		  </div>
		</nav>		
	</section>
	<section name="jumbotron">
		<div class="jumbotron jumbotron-fluid text-light mb-5" id="jumbotronBG">
			<div class="container">
				<h1 class="mainText display-3 text-center topJumbotron" id="mainTxt" style="font-weight:bold; margin-top:2%;">
						How can we 
							<span class="text-primary" style="font-family:Noto Sans Black; letter-spacing:-3.5px; font-weight:bolder!important; font-size:110%!important;">
								help
							</span> 
						you today?
				</h1>
				<p class="text-center text-light topTxt" style="font-size:190%; margin-bottom:5%;"><span style="font-family:Noto Sans Black; letter-spacing:-2.0px; font-weight:bolder;">Help<span class="text-primary">y</span></span> makes your school life  easier.</p>
				<div class="input-group mx-auto searchBar" style="width:60%;">
					<input type="search" class="form-control form-control-lg" id="searchTxt" placeholder="What service/product are you looking for?">
					<div class="input-group-prepend">
						<button type="button" class="btn btn-primary" style="border-top-right-radius:5px!important;border-bottom-right-radius:5px!important; ">
							<i class="material-icons">search</i>
						</button>
					</div>
				</div>
				<p class="text-light text-center mt-3 lead"><strong>Learn More</strong></p>
			</div>
		</div>
	</section>
	<section name="web-content">
		<div class="container mb-5 mt-1 d-none d-lg-block secondPartJumbotron" style="margin-top:6%!important; margin-bottom:6%!important;">
			<div class="row">
				<div class="col">
					<img src="img/helpy logo.png" class="imgFirstPart" width=90%>
				</div>
				<div class="col">
					<h1>What is <span style="letter-spacing:-2.0px; font-family:Noto Sans Black; font-weight:bolder;">Help<span class='text-primary'>y</span></span>?</h1>
						<h5 class="lead" style="font-size:160%; letter-spacing:1.5px;  font-family: HelveticaNeue Light!important;">
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<span style="font-family:Noto Sans Black; letter-spacing:-2.0px; font-weight:bolder;">Help<span class="text-primary">y</span></span> is a website that helps students take control of their college life. Helpy allows you get tasks done, rent items and avail of  special products to enhance their college life. Helpy's uniquer services make it the perfect companion for every companion for every student in the college level.
						</h5>
				</div>
			</div>
		</div>
	</section>
	<section name="secondWebContent">
		<div class="jumbotron jumbotron-fluid text-light d-none d-lg-block" id="secondJumbotronBG" style="margin-bottom:-1%!important;">
			<div class="container mt-5 mb-5">
				<div class="d-flex flex-column ml-auto" id="rightSide"> <!-- helpyNowImg -->
					<p  class="helpyNowImg" style="color:black; font-family:Noto Sans Black; font-size:750%!important; letter-spacing: -10.0px; white-space: nowrap; font-weight:bolder;">help<span class='text-primary'>y</span> <span class="text-light">now</span></p>
					<h1 class="lead txtFontSize" style="font-family: HelveticaNeue Light!important;">
						<span style="color:black!important; font-family:Noto Sans Black; letter-spacing:-2.0px; font-weight:bolder;">Help<span class="text-primary">y</span></span> now allows you to match up with a helper on demand and have your task completed on time. Make your school life easier and leave the job to our polite helpy helpers!
					</h1>
					<a href="/profile" class="btn btn-outline-light ml-auto mt-5 getStartedBtn helpyNowLink btn-lg">Get Started</a>
				</div>
			</div>
		</div>		
	</section>
	<section name="thirdWebContent">
		<div class="jumbotron jumbotron-fluid text-light d-none d-lg-block" id="thirdJumbotronBG">
			<div class="container mt-5 mb-5">
				<div class="d-flex flex-column mr-auto text-dark" id="leftSide">
					<p  class="helpRentalImg" style="color:black; font-family:Noto Sans Black; font-size:750%!important; letter-spacing: -10.0px; white-space: nowrap; font-weight:bolder;">help<span class='text-primary'>y</span> rentals</p>
					<h1 class="lead txtFontSize" style="font-family: HelveticaNeue Light!important;">
						Running low battery or looking for tables for a party? Helpy rentals let you rent a vast selection of items so you could save money from buying expensive items
					</h1>
					<button type="button"  class="btn btn-outline-dark ml-auto mt-5 getStartedBtn btn-lg rentals" disabled>Coming Soon</button>
				</div>
			</div>
		</div>			
	</section>	
	<section name="fourthWebContent">
		<div class="jumbotron jumbotron-fluid text-light d-none d-lg-block" id="fourthJumbotronBG">
			<div class="container mt-5 mb-5 d-flex flex-row justify-content-center">
					<div class="col-4 rightPartOfFourth">
						<p  class="bottomImgOne" style="color:black; font-family:Noto Sans Black; font-size:750%!important; letter-spacing: -10.0px; white-space: nowrap; font-weight:bolder;">help<span class='text-primary'>y</span></p>
<!-- 						<img src="img/helpy logo.png" class="bottomImgOne" width="90%" height="auto"> -->
						<h1 class="ml-2 bottomImgOne" style="margin-top:-17%; letter-spacing:-9.0px!important;  font-family:Ubuntu; color:black; font-size:750%; font-weight:bolder;"><strong>partners</strong></h1>
					</div>
					<div class="col-4 leftPartOfFourth">
						<img src="img/08.png" width="80%" class="bottomImgTwo" height="auto" style="background:white;" class="ml-4">
					</div>
			</div>
			<center>
				<h1 class="lead mt-5" style="margin-top:9%!important; width:60%; font-size:170%; color:black; font-family:arial;">Helpy partners offers you the unique products created by the school's own BS-Entrepreneurship students.</h1>
			</center>
		</div>		
	</section>
	<section name="mobileView">
		<div class="container mb-5 mt-5 d-sm-block d-md-none" style="margin-top:6%!important; margin-bottom:6%!important; ">
			<div class="row">
				<img src="img/helpy logo.png" class="mx-auto" width="80%" height="50%">
				<h2>What is Helpy?</h2>
				<h5 class="lead text-justify ml-3" style="font-size:140%; letter-spacing:1.5px; width:90%;">
						&nbsp
						<span style="font-family:Noto Sans Black; letter-spacing:-2.0px; font-weight:bolder;">Help<span class="text-primary">y</span></span> is a website that helps students take control of their college life. Helpy allows you get tasks done, rent items and avail of  special products to enhance their college life. Helpy's uniquer services make it the perfect companion for every companion for every student in the college level.
				</h5>
			</div>
		</div>	
		<!-- Second part of the web-content -->
		<div class="jumbotron jumbotron-fluid bg-dark text-light d-sm-block d-md-none" style="background:transparent; margin-bottom:-2%; padding-top:0!important">
		<img src="css/img/IMG_1728.JPG" width="100%" height="250px" >
			<div class="container mt-5">
				<div class="d-flex flex-column mx-auto" id="">
					<img src="img/helpynowalternate.png" class="secondPartMobileImg mt-1" width="100%" height="auto;">
					<h1 class="lead text-justify txtFontSize">
						<span style="font-family:Noto Sans Black; letter-spacing:-2.0px; font-weight:bolder;">Help<span class="text-primary">y</span></span> now allows you to match up with a helper on demand and have your task completed on time. Make your school life easier and leave the job to our polite help helpers!
					</h1>
					<button type="button"  class="btn btn-outline-light mx-auto mt-5 getStartedBtn btn-lg">Get Started</button>
				</div>
			</div>
		</div>	

		<!-- Third part of the web-content -->
		<div class="jumbotron jumbotron-fluid text-light d-sm-block d-md-none" style="background:transparent; width:100%; margin-bottom:-2%; margin-top:-9%;">
			<img src="css/img/secondImage.png" width="100%" height="200px">
			<div class="container mt-5">
				<div class="d-flex flex-column mx-auto text-dark">
					<img src="img/helpyrentals.png" width="105%"; height="60%";>
					<h1 class="lead text-justify" style="letter-spacing:1.5px;font-size:140%!important;width:99%!important;" >
						Running low battery or looking for tables for a party? Helpy rentals let you rent a vast selection of items so you could save money from buying expensive items.
					</h1>
					<button type="button"  class="btn btn-outline-dark mx-auto mt-5 getStartedBtn rentals btn-lg" disabled>Coming soon</button>
				</div>
			</div>
		</div>		
		<!-- Fourth part of the web-content -->
		<div class="jumbotron jumbotron-fluid text-light d-sm-block d-md-none mb-5" id="fourthJumbotronBG">
			<div class="container row">
				<div class="col leftSide" style="margin-top:23%; margin-left:-6%;">
					<p  class="ml-3" style="color:black; font-family:Noto Sans Black; font-size:450%!important; letter-spacing:-5.0px!important;">help<span class="text-primary">y</span></p>
					<p class="ml-3" style="color:black; font-family:Noto Sans Black!important; font-weight:bold; font-size:260%; margin-top:-18%;">partners</p>
				</div>
				<div class="col rightSide">
					<img src="img/08.png" width="120%" height="250px" style="background:white;">
				</div>
			</div>
			<center>
				<p class="" style="margin-bottom:30%!important;width:90%; font-size:160%; font-family: HelveticaNeue Light!important; color:black;">Helpy partners offers you the unique products created by the school's own BS-Entrepreneurship students.</p>
			</center>
		</div>		
	
	</section>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="js/index.js"></script>
</body>
</html>