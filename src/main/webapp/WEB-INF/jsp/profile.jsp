<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>My Profile | Helpy</title>
	<link rel="icon" href="/img/LG_Logo White.png">	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="/css/animate.min.css">
	<link rel="stylesheet" href="/css/profile.css">	
</head>
<body>
<input type="hidden" name="userPercentage">
<section name="modal">
	<div class="modal fade bd-example-modal-lg" id="createJobRequestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header bg-primary text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
	        <h5 class="modal-title" id="exampleModalLongTitle">Job Request Form</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true" class="text-light">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body modalBody">
	      	<input type="hidden" name="stepProgress" value="Step 1">
	      	<input type="hidden" name="jr_location">
	      	<input type="hidden" name="jr_locationDetails">
	      	<input type="hidden" name="jr_jobType">
	      	<input type="hidden" name="jr_time">
	      	<input type="hidden" name="jr_title">
	      	<input type="hidden" name="jr_details">
	      	<input type="hidden" name="jr_requiredCash">
	      	<input type="hidden" name="jr_otherInfo">
	      	<input type="hidden" name="jr_deliveryFee">
	      	<input type="hidden" name="jr_totalFee">
	  		<input type="hidden" name="jr_AddFields" value="3">
	  		
	  			
	  			
	  		<div class="stepOne" style="display:none;">
	  			<h5>Step 1: Location</h5>
	  			<small class="text-muted">Select location of your job request</small>
	  			<form id="locationForm">
	    			<div class="d-flex flex-row justify-content-center">
		      			<div class="custom-control custom-radio mt-3">
						  	 <input type="radio" id="customRadio1" value="Inside Campus" name="location" class="custom-control-input">
						 	 <label class="custom-control-label InsideCampusLbl" for="customRadio1">Inside Campus</label>
						</div>
		      			<div class="custom-control custom-radio mt-3 mx-auto">
						  	 <input type="radio" id="customRadio2" value="Outside Campus" name="location" class="custom-control-input">
						 	 <label class="custom-control-label OutsideCampusLbl" for="customRadio2">Outside Campus</label>
						</div>	
					</div>	
				</form>  				
	  		
	  		</div>	
	  		
	  		<div class="stepTwo" style="display:none;">
	  			<h5>Step 2: Job Type</h5>
	  			<small class="text-muted">Specify job type</small>
	  			
		      			<div class="custom-control custom-radio mt-3 mx-auto">
						  	 <input type="radio" id="jt1" value="A-B" name="jobType" class="custom-control-input">
						 	 <label class="custom-control-label type1Lbl" for="jt1">Delivery A - B</label>
						</div>	
							<small class="text-muted ml-4 mb-2">e.g. Bring bag from SJ to La Salle</small>
		      			<div class="custom-control custom-radio mx-auto">
						  	 <input type="radio" id="jt2" value="A-B-C.." name="jobType" class="custom-control-input">
						 	 <label class="custom-control-label type2Lbl" for="jt2">Round Trip A + B + C...</label>
						</div>
							<small class="text-muted ml-4 mb-2">e.g. Buy Milk Tea and Sandwich to Henry</small>	
		      			<div class="custom-control custom-radio mx-auto">
						  	 <input type="radio" id="jt3" value="A-B-A" name="jobType" class="custom-control-input">
						 	 <label class="custom-control-label type3Lbl" for="jt3">Three point delivery  A - B - A</label>
						</div>	  
							<small class="text-muted ml-4 mb-2">e.g. Meet me to get Flashdrive, print, then go back to me</small>			 		
	  		</div>
	  		
	  		<div class="stepThree"style="">
	  		
	  			<h5>Step 3: Job Details</h5>
	  			<small class="text-muted">Input job details explicitly</small>
	  			
				<!-- Time Details -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-6">
							<h6>Time:</h6>
						</div>
						<div class="col-6">
							<h6>Required Cash:</h6>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<input type="time" class="form-control form-control-sm" name="iptTime">
						</div>
						<div class="col-6"> 
							<input type="number" class="form-control form-control-sm" id="cashRequired">
						</div>
					</div>
				</div>  			
	  			<div class="row  ml-2 mr-2 mt-3" id="location_details_ipt">
	  				<h6>Job Title:</h6>
	  			</div>
	  			<div class="col ml-2">
	  				<div class="job_details_1">
	  					<input type="text" placeholder = "Job title.." name="jobTitle" class="form-control">
	  				</div>
	  			</div>		  	
	 			
	  			<div class="row mt-4 ml-2">
	  				<h6>Task:</h6>
	  			</div>
	  			<div class="col ml-2" id="dynamicJobDetailsHTML">
					
	  			</div>
	  			<div class="row  ml-2 mr-2 mt-3" id="location_details_ipt">
	  				<h6>Point-of-Destination Details:</h6>
	  			</div>
	  			<div class="col ml-2">
	  				<div class="job_details_1">
	  					<textarea class="form-control" id="jobDetailsTextArea" rows="3"></textarea>
	  				</div>
	  			</div>		  			
	  			  		
	  		</div>	
	      		
	      	<div class="alert alert-danger validationError" role="alert" style="display:none; font-size:80%!important; margin-top:2%!important;">

			</div>	
		 	
	      </div>
	      <div class="modal-footer" style="background:#e8e8e8; border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
	        <button type="button" class="btn btn-danger closeBtnStep1" id="cancelButton" >Cancel</button>
	        <button type="button" class="btn btn-primary nextBtnStep1" id="nxtButton">Next</button>
	      </div>
	    </div>
	  </div>
	</div>
	<section name = "logout_modal">
		<div class="modal fade" id="jobCreationBalanceError" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-danger"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Job Request Error</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        Sorry, your account balance is insufficient
		      </div>
		      <div class="modal-footer" style="background:transparent!important;">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>	
	</section>	
	<section name = "not_enough_balance">
		<div class="modal fade" id="logOutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-warning"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title text-light" id="exampleModalLabel">Sign out</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        Are you sure you want to sign out your account?
		      </div>
		      <div class="modal-footer" style="background:transparent; ">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-warning text-light logoutBtn">Yes, sign me out</button>
		      </div>
		    </div>
		  </div>
		</div>	
	</section>
	<section name="cancelJobRequestCreatedSummaryPage">
		<div class="modal fade" id="cancelRequestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-danger"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title text-light" id="exampleModalLabel">Cancel Job Request</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        Are you sure you want to cancel the job request created?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-danger cancelRequestModalBtn">Yes, cancel the request</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>
	<section name="pendingJobRequestError">
		<div class="modal fade" id="pendingJobRequestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-danger"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title text-light" id="exampleModalLabel">Pending Job Request</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	Can't accept another job if you have pending job request.
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>
	<section name="cancelJobRequest">
		<div class="modal fade" id="cancelRequestModalSummaryPage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-danger"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title text-light" id="exampleModalLabel">Cancel Job Request</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        Are you sure you want to cancel the job request created?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-danger cancelRequestModalSummaryPageBtn">Yes, cancel the request</button>
		      </div>
		    </div>
		  </div>
		</div>			
	</section>
	<section name="jobRequestResponse">
		<div class="modal fade" id="jobRequestResponse" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-success text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Job Request</h5>
		      </div>
		      <div class="modal-body modalBodyResponse">
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-success okayButtonResponse1">Okay</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>	'
	<section name="userInformationAccountNotApproved">
		<div class="modal fade" id="userInformationNotApproved" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-info text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Account Status</h5>
		      </div>
		      <div class="modal-body">
		      		<h6>Your account has not yet approved by the admin, you can't accept job request for now</h6>
		      </div>
		      <div class="modal-footer bg-white">
		        <button type="button" class="btn btn-info buttonResponseUserInformation">Okay</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>
	<section name="changeUserPassword">
		<div class="modal fade" id="updateUserpasswordModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-info text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Change Password</h5>
		      </div>
		      <div class="modal-body">
					  <div class="form-group">
					    	<label for="iptOldPassword">Old password</label>
					    	<input type="password" class="form-control" id="iptOldPassword" aria-describedby="oldPasswordTxt" placeholder="Old password">
					    	<small id="oldPasswordTxt" class="form-text text-danger d-none">We'll never share your email with anyone else.</small>
					  </div>
					  <div class="form-group">
					    	<label for="iptOldPassword">New password</label>
					    	<input type="password" class="form-control iptNew" id="iptNewPassword" aria-describedby="newPasswordTxt" placeholder="New password">
					    	<small id="newPasswordTxt" class="form-text text-danger d-none">We'll never share your email with anyone else.</small>
					  </div>
					  <div class="form-group">
					    	<label for="iptReenterNewPassword">Reenter new password</label>
					    	<input type="password" class="form-control iptReenter" disabled id="iptReenterNewPassword" aria-describedby="reenterNewPasswordTxt" placeholder="Reenter new password">
					    	<small id="reenterNewPasswordTxt" class="form-text text-danger d-none">We'll never share your email with anyone else.</small>
					  </div>
		      </div>
		      <div class="modal-footer bg-white">
		        <button type="button" class="btn btn-info" id="saveButtonshit">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>
	<section name="viewInformationOnJobRequest">
		<div class="modal fade" id="jobRequestInformationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">																																																																																																																																																											
				    <div class="modal-content">
					      <div class="modal-header bg-info text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
					        	<h5 class="modal-title" id="jobRequestModalTitle">Job Details</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          	<span aria-hidden="true">&times;</span>
						        </button>
					      </div>
					      <div class="modal-body" id="jobRequestModalBody">
					        	<div class="container">
					        		<div class="row">
					        			<div class="col-md-12 ">
					        				<div class="d-flex flex-row mb-5">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Job ID:&nbsp&nbsp&nbsp</small></span>	
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoJobId"></span>
					        				</div>
					        				<div class="d-flex flex-row mb-5">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Job Title:</small></span>
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoJobCategory"></span>
					        				</div>
					        				<div class="d-flex flex-row mb-5">
					        					<span class="col-3 text-muted" style="width:30%!important;"><small>Location:</small></span>
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoLocation"></span>
					        				</div>
					        				<div class="d-flex flex-row mb-5">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Time:</small></span>	
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoTime"></span>
					        				</div>		
					        				<div class="d-flex flex-row mb-5">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Required cash:</small></span>
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoRequiredCash"></span>
					        				</div>	
					        				<div class="d-flex flex-row mb-5">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Delivery fee:</small></span>	
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoDeliveryFee"></span>
					        				</div>
					        				<div class="d-flex flex-row mb-5">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Job Type:</small></span>
					        					<span class="col" style="font-size:90%!important; width:70%!important;" id="jobInfoJobType"></span>
					        				</div>
					        				<div class="d-flex flex-row">
					        					<span class="text-muted col-md-3" style="width:30%!important;"><small>Job Details:</small></span>
						        				<small class="col">
						        					<ul id="jobInfoJobDetails" style="width:100%!important; font-size:110%!important;margin-top:-4%!important; margin-bottom:-4%!important;">
							        					<input type="hidden" name="userRemainingBalance"><input type="hidden" name="adminValidation">
							        				</ul>
							        			</small>
					        				</div>	
	        										        			
					        			</div>
					        		</div>
					        	</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary OkayButtonJobRequestInformation">Okay</button>
					      </div>
				    </div>
			  </div>
		</div>	
	</section>
	<section name="viewRequestProfileInformation">
		<div class="modal fade" id="viewRequesterProfileInformation" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
					      <div class="modal-header bg-info text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
					        	<h5 class="modal-title" id="jobRequestModalTitle">Server Profile</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          	<span aria-hidden="true">&times;</span>
						        </button>
					      </div>
					      <div class="modal-body" id="requestProfile">
					        	<div class="container">
					        		<div class="row">
					        			<div class="col-md-4 mx-auto">
					        				<img src="/img/boy.png" width="80%" height="80%" class="rounded profileImage">
					        			</div>
					        			<div class="col-md-8">
											<div class="row">
												<p class="col" style="font-size:80%;">
													Name:&nbsp&nbsp&nbsp&nbsp
													<span class="col nameInfo" style="font-size:130%!important;"></span>
												</p>
											</div>		
											<div class="row" style="margin-top:0%!important">
												<p class="col" style="font-size:80%;">
													Email:&nbsp&nbsp&nbsp&nbsp&nbsp
													<span class="col emailInfo" style="font-size:120%!important;"></span>
												</p>
											</div>	
											<div class="row" style="margin-top:0%!important">
												<p class="col" style="font-size:80%;">
													Social:&nbsp&nbsp&nbsp&nbsp&nbsp
													<span class="col socialMedia" style="font-size:120%!important;"></span>
												</p>
											</div>	
											<div class="row" style="margin-top:-2%!important">
												<p class="col" style="font-size:80%;">
													Phone #:
													<span class="col phoneInfo" style="font-size:120%!important;"></span>
												</p>
											</div>	
											<div class="row" style="margin-top:-2%!important">
												<p class="col" style="font-size:80%;">
													ID #:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
													<span class="col IdInfo" style="font-size:120%!important;"></span>
												</p>
											</div>							
										</div>
					        		</div>
					        	</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary" data-dismiss="modal">Okay</button>
					      </div>
				    </div>
			  </div>
		</div>	
	</section>
	<section name="howToAddBalanceModal">
		<div class="modal fade" id="modalForAddCoinInformation" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Add balance</h5>
		      </div>
		      <div class="modal-body">
		      	<div class="row">
		      		<div class="col-md-6">
		      			<h5 class="lead">Via QR Code</h5>
		      			<div class='col mt-4'>
		      				<img src="/img/QR_Code.png" width="100%" class="mx-auto">
		      			</div>
		      			<div class="row">
		      				<small class="mx-auto text-primary mt-3">Scan the QR Code above, visit the URL</small>
		      			</div>
		      		</div>
		      		<div class="col-md-6">
		      			<h5 class="lead" style="margin-bottom:6%!important;">Via 7/11 CLIQQ Machine</h5>
		      			<div style="font-size:85%!important;">
			      			<p>1. Go to CLIQQ Machine in 7/11 convinience store</p>
			      			<p>2. Choose "e-money" and coins.ph input <strong>+63926 696 9778</strong> as the phone number</p>
			      			<p>3. Proceed to the cashier, give the payment slip and payment</p>
			      			<p>4. Message the admin that you have top up</p>
			      			<p>5. Wait for the update of your balance</p>
			      			
			      		</div>
		      		</div>
		      	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-success okayButtonAddCoinBtn">Okay</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>
	<section name="jobAccepterNotificationModal">
		<div class="modal fade" id="jobAcceptanceNotificationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-success text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Job Request Accepted</h5>
		      </div>
		      <div class="modal-body acceptedJobModalBody">
			
		      </div>
		      <div class="modal-footer bg-white">
		        <button type="button" class="btn btn-success buttonJobAccepterNotificationModal">Okay</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>
	<section name="jobCancelModalForDoer">
		<div class="modal fade" id="jobCancelledNotificationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-primary text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Job Cancelled</h5>
		      </div>
		      <div class="modal-body jobCancelledJobModalBody">
			
		      </div>
		      <div class="modal-footer bg-white">
		        <button type="button" class="btn btn-primary buttonJobCancelledNotificationModal">Okay</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>	
	<section name="jobCompletedModalForDoer">
		<div class="modal fade" id="jobCompletedNotificationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-success text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Job Completed</h5>
		      </div>
		      <div class="modal-body jobCompletedJobModalBody">
					
		      </div>
		      <div class="modal-footer bg-white">
		      	<button type="button" class="btn btn-success buttonNoJobCompletionNotificationModal">No</button>
		        <button type="button" class="btn btn-success buttonJobCompletionNotificationModal">Finish</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>		
	<section name="jobCompletionModalNotification">
		<div class="modal fade" id="jobCompletionNotificationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-success text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Job Completed</h5>
		      </div>
		      <div class="modal-body jobCompletedJobModalBody">
			
		      </div>
		      <div class="modal-footer bg-white">
		      	<button type="button" class="btn btn-success buttonNoJobCompletedNotificationModal">No</button>
		        <button type="button" class="btn btn-success buttonJobCompletionNotificationModal">Complete</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>	
	<section name="waitForTheOtherUserToFinish">
		<div class="modal fade" id="waitForTheOtherUserToFinishModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-info text-light"  style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title">Please wait</h5>
		      </div>
		      <div class="modal-body">
					Please wait for the doer/client to click finish button
		      </div>
		      <div class="modal-footer bg-white">
		      	<button type="button" class="btn btn-info" data-dismiss="modal">Okay</button>
		      </div>
		    </div>
		  </div>
		</div>		
	</section>	
</section>	
		
<div id="pageContent">
	<section name="navigationBar">
		<nav class="navbar navbar-expand-lg fixed-top navbar-light">
		  <a class="navbar-brand brandName d-none" href="#">
		  		 <!-- <img src="img/LG_Logo HN Black.png" class="navigationBarImage" width="70%" height="auto" alt="Helpy Logo"> -->
		  </a>
		  <a class="navbar-brand">
		  		 <p style="color:black; font-family:Ubuntu; font-weight:bolder; letter-spacing:-2.0px; font-size: 180%!important; margin-top:-5%!important; margin-bottom:-5%!important;" >
		  		 		help<span class="text-primary">y</span> now
		  		 </p>
		  </a>
		  <button class="navbar-toggler btnMenuBars" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" style="border:0!important; color:white;">
			<span><i class="material-icons bars menuFourBars" style="font-size:190%; color:black;">menu</i></span>
		  </button>		
		  <div class="collapse navbar-collapse mx-auto" id="navbarSupportedContent">
		    <ul class="navbar-nav  ml-auto">
		      <li class="nav-item tapUpCoins" style="cursor:default;">
		        <a class="nav-link">My Balance: <span id="userBalance"></span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/">Home</a>
		      </li>
		      <li class="nav-item active d-sm-block d-md-none" id="requestsNav" data-toggle="collapse" data-target=".navbar-collapse.show">
				<a class="nav-link" id="requestsTabHref" href="#">Request</a>		      
		      </li>
		      <li class="nav-item d-sm-block d-md-none" id="jobsNav" data-toggle="collapse" data-target=".navbar-collapse.show">
				<a class="nav-link" id="jobsTabHref">Jobs</a>		      
		      </li>
		      <li class="nav-item d-sm-block d-md-none" id="transactionsNav" data-toggle="collapse" data-target=".navbar-collapse.show">
				<a class="nav-link" id="transactionsTabHref">Transaction</a>		      
		      </li>
		      <li class="nav-item d-sm-block d-md-none" id="notificationsNav" data-toggle="collapse" data-target=".navbar-collapse.show">
				<a class="nav-link" id="notificationsTabHref">Notification</a>		      
		      </li>
		      <li class="nav-item d-sm-block d-md-none" id="settingsNav" data-toggle="collapse" data-target=".navbar-collapse.show">
				<a class="nav-link" id="settingsTabHref">Settings</a>		      
		      </li>
		      <li class="nav-item d-none d-sm-block d-md-none">
		      	<a class="nav-link">|</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link logOutLink" style="cursor:default!important;">Log out</a>
		      </li>
		    </ul>
		  </div>
		</nav>
	</section>	
	<div class="sidenav d-none d-lg-block d-xl-block d-xl-none">
		<center>
			<img src="/css/img/boy.png" width="50%" height="auto" class="rounded-circle p-1 border border-primary bg-light">
			<p class="text-light mt-3 txtUserName"></p>
		</center>
			
		<ul class="mt-5 list-group"><!--  activeSideNavigation -->
			<li class="list-group-item activeSideNavigation" id="requestsTab"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">home</i>Request</li>
			<li class="list-group-item" id="jobsTab" ><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">business_center</i>Jobs</li>
			<li class="list-group-item" id="transactionsTab" ><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">person_pin</i>Transaction</li>
			<li class="list-group-item" id="notificationsTab" ><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">notifications</i>Notification&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="badge badge-danger" style="font-size:70%!important; position:relative; top:-1px!important;">1</span></li>
			<li class="list-group-item" id="settingsTab"><i class="material-icons" style="position:relative; top:6px!important; right:10px!important;">settings</i>Settings</li>
		</ul>
	</div>

	
	<section name="serverWebContent">
	
			<div id="createRequest">
				<div class="container-fluid createRequestForm">
						<p class="lead mt-5">Helpy now allows you to match up with a helper on demand and have your tasks completed on time. Make your school life easier and leave the job to our polite helpy helpers</p>
						<button type="button" class="btn btn-primary mb-5 createRequest">Create Request</button>
				</div>
				<hr>
				<div class="activeRequestsTab container-fluid">
					<div class="row ml-1 mr-1">
						<div class="col-sm-6 requestsTable activeRequests" >
							<p class="text-muted mb-4 []">Active Request</p>
								<div class="activeRequestsContent">
									
								</div>							
						</div>
						<div class="col-sm-6 p-5 mt-2 requestsTable">
							<p class="text-muted inProgressTxt" style="margin-top:-9%;">In progress</p>
							<div class="scheduledRequest">
							
							</div>
						</div>
					</div>
				</div>
			</div>
			
	</section>

	<section name="availableJobs">

		<div id="JobsTab" class="mt-5" style="display:none;">
			<div class="activeRequestsTab container-fluid">
				<div class="row">
						<div class="col requestsTable">
									<div class="mb-4">
										<form action="/doerview/search/" method="post">
											<p class="text-muted d-inline">Filter:</p>
											<input type="text" id="inputHelpBlock" onkeyup="" name="searchTexbox" class="form-control col-sm-2 d-inline" aria-describedby="helpBlock">
											<button type="submit" class="btn btn-secondary">Search</button>
										</form>
									</div>
									
									<p class="text-primary">Accepted Request</p>
									
									<!-- DESKTOP -->
									<ul id="acceptedJobRequestsLists" class="mx-auto d-none d-sm-none d-lg-block" style="list-style:none; width:100%!important; margin-left:-2%!important;">
																
									</ul>
									<!-- MOBILE -->
									<div class="d-sm-block d-md-none">
										<div id="accordion">
										  <div class="card" id="mobileViewJobRequestsAccepted">
										    	
										  	</div>
										 </div>
									</div>
									
									<p class="text-success">Active Request</p>
									
									<!-- DESKTOP -->
									<ul id="activeJobRequestsLists" class="mx-auto d-none d-sm-none d-lg-block" style="list-style:none; width:100%!important; margin-left:-2%!important;">
																
									</ul>
									<!-- MOBILE -->
									<div class="d-sm-block d-md-none">
										<div id="accordion">
										  <div class="card" id="mobileViewJobRequests">
										    	
										  	</div>
										 </div>
									</div>
		
									<p class="text-secondary">Completed Request</p>
									
									<!-- DESKTOP -->
									<ul id="completedJobRequestsLists" class="mx-auto d-none d-sm-none d-lg-block" style="list-style:none; width:100%!important; margin-left:-2%!important;">
																
									</ul>
									<!-- MOBILE -->
									<div class="d-sm-block d-md-none">
										<div id="accordion">
										  <div class="card" id="mobileViewJobRequestsCompleted">
										    	
										  	</div>
										 </div>
									</div>
							</div>
	
						</div>
				</div>
		</div>
	</section>	

	
	<div id="transactionView">
		<table class="table table-bordered tableHideDesktopView">
			  <thead>
			    <tr>
			      <th scope="col">Job ID</th>
			      <th scope="col">Status</th>
			      <th scope="col">Time</th>
			      <th scope="col">Job Title</th>
			      <th scope="col">Required Cash</th>
			      <th scope="col">Delivery Fee</th>
			      <th scope="col">Total Fee</th>
			    </tr>
			  </thead>
			  <tbody id="transactionTable" style="font-size:80%!important">
	
			  </tbody>
		</table>
		<table class="d-sm-block d-md-none table table-bordered table-responsive">
			  <thead>
			    <tr>
			      <th scope="col">Job ID</th>
			      <th scope="col">Status</th>
			      <th scope="col">Time</th>
			      <th scope="col">Job Title</th>
			      <th scope="col">Required Cash</th>
			      <th scope="col">Delivery Fee</th>
			      <th scope="col">Total Fee</th>
			    </tr>
			  </thead>
			  <tbody id="transactionTableMobile" style="font-size:80%!important">
	
			  </tbody>
		</table>



	
	</div>
	<section name="userSettings">
		<div id="updateUserInformation" style="display:none;">
			<div class="card mx-auto">
			  	<div class="card-header">
				    Update my information
				</div>
			    <div class="card-body">
			    <div class="alert alert-success d-none notificationUpdate" role="alert">
				 	<i class="material-icons" style="position:relative; top:5px!important;">check</i> Update successful
				</div>
			    	<div class="float-md-left col-md-3 leftSideSettings">
			    		<div class="m-5 imgContainer">
				    		<img src="/img/boy.png" width="150%" id="changeProfilePicture" class="rounded-circle border border-primary m-2 p-3 imgSettings">
				    		  	  <div class="form-group mt-4" style="width:100%!important;">
								    <label for="exampleFormControlFile1"><small>Select photo</small></label>
								    <input type="file" class="form-control-file" id="selectImgFile" name="imgFile" accept=".png, .jpg, .jpeg">
								  </div>
					    		<!-- <button type="button" class="btn btn-primary mt-2 ml-5" >Change photo</button> -->
				    	</div>
			    	</div>
			    	<div class="rightSideSettings float-md-right col-md-7">
						  <div class="form-group">
							    <label for="chngeName">Name</label>
							    <div class="input-group">
							    	<input type="text" class="form-control settingsIptField chngeName" aria-describedby="emailHelp" readonly>
							    	<div class="input-group-prepend" >
							    		<button type="button" class="btn btn-primary updateName" style="border-top-right-radius: 5px!important; border-bottom-right-radius: 5px!important;"><i class="material-icons">mode_edit</i></button>
							    	</div>
							    </div>
							    <small id="emailHelp" class="form-text text-muted d-none">We'll never share your email with anyone else.</small>
						  </div>	
						  <div class="form-group">
							    <label for="chngeEmail">Social Media</label>
							    <div class="input-group">
							    	<input type="text" class="form-control settingsIptField chngeSocial" aria-describedby="socialMedia" readonly>
							    	<div class="input-group-prepend">
							    		<button type="button" class="btn btn-primary updateSocial" style="border-top-right-radius: 5px!important; border-bottom-right-radius: 5px!important;"><i class="material-icons">mode_edit</i></button>
							    	</div>
							    </div>
							    <small id="emailHelp" class="form-text text-muted d-none">We'll never share your email with anyone else.</small>
						  </div>
						  <div class="form-group">
							    <label for="chngeEmail">Email Address</label>
							    <div class="input-group">
							    	<input type="text" class="form-control settingsIptField chngeEmail" aria-describedby="emailHelp" readonly>
							    	<div class="input-group-prepend">
							    		<button type="button" class="btn btn-primary updateEmail" style="border-top-right-radius: 5px!important; border-bottom-right-radius: 5px!important;"><i class="material-icons">mode_edit</i></button>
							    	</div>
							    </div>
							    <small id="emailHelp" class="form-text text-muted d-none">We'll never share your email with anyone else.</small>
						  </div>
						  <div class="form-group">
							    <label for="chngePhone">Phone Number</label>
							    <div class="input-group">
							    	<input type="text" class="form-control settingsIptField chngePhone" aria-describedby="emailHelp" readonly>
							    	<div class="input-group-prepend">
							    		<button type="button" class="btn btn-primary updatePhone" style="border-top-right-radius: 5px!important; border-bottom-right-radius: 5px!important;"><i class="material-icons">mode_edit</i></button>
							    	</div>
							    </div>
							    <small id="emailHelp" class="form-text text-muted d-none">We'll never share your email with anyone else.</small>
						  </div>
						  <button type="button" class="btn btn-primary changePasswordBtn">Change password</button>
					</div>
			    </div>
			    	 <div class="d-inline mb-4  mr-5 ml-auto">
						<button type="button" class="btn btn-success saveChangesInfoBtn">Save changes</button>
						<button type="button" class="btn btn-danger">Clear</button>
					</div>
			</div>
		
		
		</div>
	</section>
	
	
	<section name="notificationTab">
	
		<div id="userNotification" style="display:none;">
		
				<div class="card text-dark bg-light mb-2 notificationCard" style="border-radius:0px!important; border-outline:0!important;">
				  <div class="card-header bg-info text-light">Notification Header</div>
				  <div class="card-body">
				  	<div class="row">
				  		<div class="col-md-9">
				    		<h6 class="card-title">John Paulo accepted your job request</h6>
				    		<small class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</small>
				    	</div>
				    	<div class="col-md-3 mt-2">
				    		<button type="button" class="btn btn-info btn-sm">View Doer</button>
				    		<button type="button" class='btn btn-success btn-sm'>Job Completed</button>
				    	</div>
				    </div>
				  </div>
				</div>
					
		</div>
		
		
	</section>	
	
	
</div>	
	<section name="summaryPage">
			<div class="card mx-auto mb-5" id="summaryPart" style="width:45%; margin-top:3%!important; display:none!important;">
			  <div class="card-body">
			  
				  	<div class="container">
				  		<div class="row">
					  		<div class="col">
					    		<h2 style="font-family:Ubuntu!important; font-size:400%!important; float:left; letter-spacing:-3.0px;">help<span class="text-primary">y</span></h2>
					    	</div>
					    	<div class="col" id="qrCodePosition">
					    		<img src="/img/coupon.png" width="25%" height="auto" id="qrCodeImg">
					    	</div>
					    </div>
				    </div>
				    <div class="container mt-3">
				    
				    	<!-- Location -->
				    	<div class="row">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right mt-3">Location Details:</h6>					    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control"  readonly id="sum_location" >
				    			<textarea class="form-control mt-2" name="txtOtherInformation" id="otherInformationLocationDetails" rows="3" readonly></textarea>
				    		</div>
				    	</div>
				    	
				    	<!-- Job title -->
				    	<div class="row mt-4">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right">Job Title:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" readonly id="job_Title">
				    		</div>
				    	</div>
				    	<!-- Job type -->
				    	<div class="row mt-4">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right">Job Type:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" readonly id="job_Type">
				    		</div>
				    	</div>				    
				    	<!-- Job type -->
				    	<div class="row mt-4">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right">Time:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" readonly id="job_Time">
				    		</div>
				    	</div>		
				    				    	
				    	<!-- Cash required -->
				    	<div class="row mt-4">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right">Cash required:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" readonly id="cash_required">
				    		</div>
				    	</div>	
				    	<!-- Delivery Fee -->
				    	<div class="row mt-4">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right">Delivery Fee:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" readonly id="delivery_fee">
				    		</div>
				    	</div>					    	
				    	<!-- Other information:  -->
				    	<div class="row">
				    		<div class="col-md-3">
				    			<h6 class="float-md-right mt-4">Other info:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<textarea class="form-control mt-2" name="txtOtherInformation" id="summ_OtherInformation" rows="3" readonly></textarea>
				    		</div>
				    	</div>
				    	
				    	<!-- Total price:  -->
				    	<div class="row">
				    		<div class="col-3">
				    			<p class="float-right display-5" style="font-size:200%!important;">Total:</p>				    		
				    		</div>
				    		<div class="col mt-3">
				    			<h6 style="font-size:200%!important;">&#x20B1; <span class='totalPrice'>890.00</span></h6>
				    		</div>
				    	</div>				    					    	
				    </div>
					    <div class="custom-control custom-checkbox agreeToTermsConditionsStyle">
						  	<input type="checkbox" class="custom-control-input" id="customCheck1">
						  	<label class="custom-control-label agreeToTermsAndConditions" for="customCheck1" style="font-size:90%!important;">Agree to Terms & Agreements</label>
						</div>
						
						<div class="float-right d=flex flex-row mt-4">
							<button type="button" class="btn btn-primary submitJobRequestBtn">Submit</button>
							<button type="button" class="btn btn-danger cancelJobRequestBtn">Cancel</button>
						</div>

				    
			  </div>
				
		
			</div>
		
	
	</section>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="/js/profileDisplayUserInformation.js"></script>
<!--     <script src="/js/profile.js"></script>	 -->
	<script src="/js/createJobRequest.js"></script>
    <script src="/js/summary_page.js"></script>
    <script src="/js/viewRecords.js"></script>
   	<script src="/js/cancelJobRequest.js"></script>
   	<script src="/js/profileButton.js"></script>
   	<script src="/js/profileJobRequestInformation.js"></script>
   	<script src="/js/logout.js"></script>
   	<script src="/js/profileChangeUserInformation.js"></script>
   	<script src="/js/notification.js"></script> 
   	<script src="/js/finishJobRequest.js"></script>
</body>
</html>