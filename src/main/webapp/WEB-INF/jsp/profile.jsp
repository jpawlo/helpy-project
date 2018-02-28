<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>My Profile | Helpy</title>
	<link rel="icon" href="/img/helpy logo.png">	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="/css/animate.min.css">
	<link rel="stylesheet" href="/css/profile.css">	
</head>
<body>
	<section name="modal">
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">Job Request Form</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body modalBody">
	      		<div class="firstPart">
		        	<small class="text-info">*Just fill in the necessary information so our helper can address your need as fast as possible</small><br>
		        	<small class="text-info">*Fields with (<span class="text-danger">*</span>) are required to fill up</small><br>
		      		<div class="d-flex flex-row mt-4">
			      		<label class="col-form-label mr-3 lblField text-muted"><span class="text-danger">*</span>Job Title:</label>
			      			<input type="text" class="form-control col-9" name="jobTitle" placeholder="e.g. Buy me Caramel Frappe from Starbucks">
		      		</div>
		      		<label class="col-form-label mr-3 lblField text-muted"><span class="text-danger">*</span>Distance:</label>
		      		<div class="d-flex flex-row ml-5">
			      		
							<div class="custom-control custom-radio mr-3">
							  <input type="radio" class="custom-control-input" name="distance" value="Inside Campus" id="distanceCheckbox">
							  <label class="custom-control-label" for="distanceCheckbox">Inside Campus</label>
							</div>
	 						<div class="custom-control custom-radio">
							  <input type="radio" class="custom-control-input" name="distance" value="Outside Campus" id="distanceCheckboxOutside">
							  <label class="custom-control-label" for="distanceCheckboxOutside">Outside Campus</label>
							</div> 
		      		</div>	   
		      		
		      		<label class="mt-2 lblField text-muted"><span class="text-danger">*</span>Job Type:</label>
		      			<div class="d-flex flex-row ml-5">
							<div class="custom-control custom-radio mr-3">
							  <input type="radio" class="custom-control-input" name="JobType" value="2 Point Delivery" id="jobType2Pt">
							  <label class="custom-control-label" for="jobType2Pt">2 point delivery</label>
							</div>
							<div class="custom-control custom-radio mr-3">
							  <input type="radio" class="custom-control-input" name="JobType" value="3 Point Delivery" id="jobType3Pt">
							  <label class="custom-control-label" for="jobType3Pt">3 point delivery</label>
							</div>  
							<div class="custom-control custom-radio mr-3">
							  <input type="radio" class="custom-control-input" name="JobType" value="Special task" id="jobTypeSpecial">
							  <label class="custom-control-label" for="jobTypeSpecial">Special task</label>
							</div>   			
		      			</div>
		      		
		      		<div class="d-flex flex-row mt-2">
		      			<label class="mt-2 lblField text-muted adjustTxtField"><span class="text-danger">*</span>Cash:</label>
		      			<input type="number" name="cashRequired" class="form-control col-6" min="1" step="any" />
		      		</div>
		      		
		      		<div class="d-flex flex-row mt-2">
		      			<label class="mt-2 lblField text-muted adjustTxtField"><span class="text-danger">*</span>Time:</label>
		      			<input type="time" name="inputTime" class="form-control col-6" />
		      		</div>	
		      		<div class="d-flex flex-row mt-2">
		      			<label class="mt-2 lblField text-muted adjustTxtField" style="margin-right:20px!important;"><span class="text-danger">*</span>Request: </label>
		      			<textarea class="form-control" rows="4" cols="40" placeholder="Indicate your detailed job request...">
		      				
		      			</textarea>
		      		</div>      		  
		      	</div> 
		      	
		      	<div class="secondPart" style="display:none;">
		      		<h3 class="text-primary mb-2">Transaction Order</h3>
		      		<table class="table table-bordered">
					  <tbody>
					    <tr>
					      <td>Distance:</td>
					      <td>Outside Campus</td>
					      <td class="text-primary">Php 29</td>
					    </tr>
					    <tr>
					      <td>Job type:</td>
					      <td>2 point deliver</td>
					      <td class="text-primary">Php 19</td>
					    </tr>
					    <tr>
					      <td>Required cash:</td>
					      <td></td>
					      <td class="text-primary">Php 250</td>
					    </tr>
					    <tr>
					      <td>Time:</td>
					      <td>2:30</td>
					      <td></td>
					    </tr>
					  </tbody>
					</table>
					<hr>
					<div class="float-right">
						<h3>Due: Php <span class="text-primary">298</span></h3>
					</div>
		      	</div>
		      	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary nextBtn">Next</button>
	      </div>
	    </div>
	  </div>
	</div>
	</section>
	<section name="navigationBar">
		<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
		  <a class="navbar-brand brandName" href="#"><span style="color:black;">help</span>y</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav ml-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link">|</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Link</a>
		      </li>
		    </ul>
		  </div>
		</nav>
	</section>	
	<div class="sidenav">
		<center>
			<img src="/css/img/boy.png" width="50%" height="auto" class="rounded-circle p-1 border border-primary bg-light">
			<p class="text-light mt-3 txtName">Juan J. dela Cruz</p>
		</center>
			
		<ul class="mt-5 list-group">
			<li class="list-group-item activeSideNavigation"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">home</i>Server</li>
			<li class="list-group-item"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">home</i>Doer</li>
			<li class="list-group-item"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">person_pin</i>Transaction</li>
			<li class="list-group-item"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">notifications</i>Notification&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="badge badge-danger" style="font-size:70%!important; position:relative; top:-1px!important;">0</span></li>
			<li class="list-group-item"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">settings</i>Settings</li>
		</ul>
	</div>

	<section name="tab_pane">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item">
		    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Server</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Doer</a>
		  </li>
		</ul>	
	</section>
	
	<section name="serverWebContent">
		<div class="container-fluid createRequestForm">
				<p class="lead mt-5">Helpy now allows you to match up with a helper on demand and have your tasks completed on time. Make your school life easier and leave the job to our polite helpy helpers</p>
				<button type="button" class="btn btn-primary mb-5 createRequest">Create Request</button>
		</div>
		<hr>
		<div class="activeRequestsTab container-fluid">
			<div class="row ml-1 mr-1">
				<div class="col requestsTable" style="border-right:1px solid gray!important; border-radius:0!important;">
					<p class="text-muted">Active Request</p>
					
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Active</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Active</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Active</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Active</button>
					</div>
					<hr class="mt-5">									
				</div>
				<div class="col p-5 requestsTable" style="border-right:1px solid gray!important; border-radius:0!important ">
					<p class="text-muted" style="margin-top:-15%;">Scheduled Request</p>
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-primary float-right mr-3">Scheduled</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-primary float-right mr-3">Scheduled</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-primary float-right mr-3">Scheduled</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-primary float-right mr-3">Scheduled</button>
					</div>
					<hr class="mt-5">	
				</div>
				<div class="col p-5 requestsTable" style="margin-top:-4%;">
					<p class="text-muted">Completed Request</p>
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Completed</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Completed</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Completed</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Completed</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Completed</button>
					</div>
					<hr class="mt-5">
					<div class="requests">
						<p style="margin-bottom:-1px;"><strong>"Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!Buy me Caramel Frappe from XB!"</strong></p>
						<small class="text-muted ml-2">February 27, 2018</small>
						<button type="button" class="btn btn-outline-success float-right mr-3">Completed</button>
					</div>
					<hr class="mt-5">
				</div>
			</div>
		</div>
	</section>
	
	
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="/js/profile.js"></script>	
</body>
</html>