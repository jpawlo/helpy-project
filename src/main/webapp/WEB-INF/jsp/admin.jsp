<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Administrator | Helpy</title>
	<link rel="icon" href="/img/LG_Logo White.png">	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="/css/admin.css">	
	<link rel="stylesheet" href="/css/admin_Tables.css">	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
</head>
<body>

	<section name="navigation_bar">
		<nav class="navbar navbar-expand-lg navbar-inverse bg-light">
		  <a class="navbar-brand" href="#" style="font-weight:bolder!important; font-family:Ubuntu; font-size:130%;">Helpy</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse mx-auto" id="navbarNavAltMarkup"><!-- AdminWalletHistory -->
			<div class="navbar-nav ml-auto">
			  <a class="nav-item nav-link" href="/admin/logout">Log out</a>
			</div>
		  </div>
		</nav>
	</section>
	<section name="sideNavigationBar">
		<div class="sidenav bg-dark">
			<div id="">
				<img src="/img/LG_LOGO_White.png" width="120%" style="margin:-25%!important;">
			</div>
		  <div class="text-light" style="margin-top:25%!important; font-size:110%!important;">
		  		<div class="border-top border-bottom activeTab usersTab">
					  <p class="">
					  	<i class="material-icons" style="position:relative; top:8.5px!important; left:3px!important; font-size:180%!important;">account_box</i><span class="ml-4">Users</span>
					  </p>
				 </div>
				 <div class="border-bottom sidebarItem jobsTab">
					  <p class="">
					  	<i class="material-icons" style="position:relative; top:8.5px!important; left:3px!important; font-size:180%!important;">work</i><span class="ml-4">Jobs</span>
					  </p>
					  	<div class="jobsDropdown" style="display:none; margin-bottom:-1%!important;">
						  <div style="font-size:80%!important; margin-bottom:-0%!important; padding:2%!important; padding-bottom:5%!important;" class="dropdownJob activeJobs">
						  		<span class=""><i class="material-icons" style="position:relative; top:8px!important; left:10px!important; right:5px!important;">trending_flat</i><span class="ml-3">Active Jobs</span></span>
						  </div>
						  <div style="font-size:80%!important; margin-bottom:-0%!important; padding:2%!important; padding-bottom:5%!important;" class="dropdownJob acceptedJobs">
						  		<span class=""><i class="material-icons" style="position:relative; top:8px!important; left:10px!important; right:5px!important;">trending_flat</i><span class="ml-3">Accepted Jobs</span></span>
						  </div>
						 </div>
					</div>
<!-- 				 <div class="border-bottom sidebarItem adminTab">
					  <p class="">
					  	<i class="material-icons" style="position:relative; top:8.5px!important; left:3px!important; font-size:180%!important;">folder_shared</i><span class="ml-4">Admin</span>
					  </p>
					</div> -->
				 <div class="border-bottom sidebarItem walletTab">
					  <p class="">
					  	<i class="material-icons" style="position:relative; top:8.5px!important; left:3px!important; font-size:180%!important;">attach_money</i><span class="ml-4">My Wallet</span>
					  </p>
					</div>
		  </div>
		</div>
	</section>
<!-- 	<section name="dashboard">
		<div id="adminDashboard">
			<div id="donutchart" style="width: 900px; height: 500px;"></div>
		</div>
	</section> -->
	<section name="UsersList">
		<div class="dataTable UsersTable">
			<table id="UsersTable" class="usersList tableStyle table table-hover table-sm">
			    <thead>
			        <tr>
			        	<th>User ID</th>
			            <th>Name</th>
			            <th>Email</th>
			            <th>Social Media Acct</th>
			            <th>Phone Number</th>
			            <th>Balance</th>
			            <th>Percent</th>
			            <th>Actions</th>
			        </tr>
			    </thead>
			    <tbody>
			    </tbody>
			</table>
		</div>
	</section>
	<section name="AcceptedJobRequest">
		<div class="dataTable AcceptedJobRequest" style="display:none;">
			<table id="AcceptedJobRequest" class="tableStyle table table-hover table-sm">
			    <thead>
			        <tr>
			            <th>Job ID</th>
			            <th>Client ID</th>
			            <th>Doer ID</th>
			            <th>Job Type</th>
			            <th>Time</th>
			            <th>Required Cash</th>
			            <th>Delivery Fee</th>
			            <th>Status</th>
			        </tr>
			    </thead>
			    <tbody>
			    </tbody>
			</table>
		</div>
	</section>	
	<section name="PendingJobRequest">
		<div class="dataTable PendingJobRequest" style="display:none;">
			<table id="PendingJobRequest" class="tableStyle table table-hover table-sm">
			    <thead>
			        <tr>
			            <th>Job ID</th>
			            <th>Client ID</th>
			            <th>Name</th>
			            <th>Job Type</th>
			            <th>Job Details</th>
			            <th>Time</th>
			            <th>Required Cash</th>
			            <th>Delivery Fee</th>
			            <th>Date</th>
			            <th>Status</th>
			        </tr>
			    </thead>
			    <tbody>
			    </tbody>
			</table>
		</div>
	</section>	
	<section name="AdminWalletHistory">
		<div class="dataTable AdminWalletHistory" style="display:none;">
			<h3 class="text-center mb-4">System Income: <strong><span class="text-primary systemTotalIncome"></span></strong></h3>
			<table id="AdminWalletHistory" class="tableStyle table table-hover table-sm">
			    <thead>
			        <tr>
			            <th>Job ID</th>
			            <th>Client ID</th>
			            <th>Doer ID</th>
			            <th>Start Time</th>
			            <th>End Time</th>
			            <th>Status</th>
			            <th>Required Cash</th>
			            <th>System Income</th>
			        </tr>
			    </thead>
			    <tbody>
			    </tbody>
			</table>
		</div>
	</section>	
	<section name="certifyAccountmodal">
		<div class="modal fade" id="certifyUserAccountModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-success text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Certify Account </h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
					<h6>Certify <span class="usernameCertify text-success"></span>'s account?</h6>
		      </div>
		      <div class="modal-footer bg-light">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-success certifyAccountBtn">Yes</button>
		      </div>
		    </div>
		  </div>
		</div>
	</section>
	<section name="addBalancemodal">
		<div class="modal fade" id="addBalanceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-info text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Manage User Balance </h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<!-- Ask whether to add or to substract -->
		      	<div class="addMinusBalanceBtnChoice">
					<button type="button" class="btn btn-primary btn-block addBalanceButton">Add balance</button>
					<button type="button" class="btn btn-warning btn-block minusBalanceButton">Substract balance</button>
				</div>
		      	<!-- Input amount -->
			      	<div class="container-fluid iptFieldAddBalance" style="display:none;">
			      		<input type="hidden" name="balanceMethodToApply">
			      		<input type="hidden" name="balanceUserId">
			      		<div class="d-flex flex-row">
				        	<label for="amountToAdd">&#8369;</label>
				       		<input type="number" class="ml-2 form-control form-control-sm" name="updateBalance">
				       		<input type="number" readonly class="ml-2 form-control form-control-sm" name="userBalance">
			       		</div>
			       			<p class="float-right text-danger" style="margin:0!important;">
				       			<small class="">*Current balance</small>
				       		</p>
				       		<p class="text-center text-danger" style="margin:0!important;">
				       			<small class="balanceDescription"></small>
				       		</p>
			       	</div>
		      </div>
		      <div class="modal-footer bg-light">
		      	<button type="button" class="btn btn-warning backBtnToTheChoiceToAddMinus mr-auto" style="display:none;">Back</button>
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-info addBalanceSaveBtn" disabled>Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
	</section>
	<section name="editPercentage">
		<div class="modal fade" id="editPercentageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-success text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Update Percentage</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
				<input type="number" class="form-control" name = "percentageOfUser" >
				<small class="text-danger">Change percentage of user for computation of income whenever the user finished a job or the user's accepted job request was cancelled. <strong>Please make sure to notify the user that there is a changes made.</strong></small>
		      </div>
		      <div class="modal-footer bg-light">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-success editPercentageSaveBtn" disabled>Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
	</section>
	<section name="freezeAccountmodal">
		<div class="modal fade" id="freezeAccountModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-danger text-light" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Freeze Account</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
				<h6>Freeze <span class="userName text-danger"></span>'s account?</h6>
		      </div>
		      <div class="modal-footer bg-light">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-danger yesFreezeAccountBtn">Yes</button>
		      </div>
		    </div>
		  </div>
		</div>
	</section>
	<section name="UnfreezeAccountmodal">
		<div class="modal fade" id="UnfreezeAccountModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-light text-dark" style="border-outline:0px!important; margin-right:-.2px!important; margin-top:-.2px!important; border-outline:0!important;">
		        <h5 class="modal-title" id="exampleModalLabel">Unfreeze Account</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
				<h6>Remove freeze status to <span class="userNameUnfreeze text-info"></span>'s account?</h6>
		      </div>
		      <div class="modal-footer bg-light">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-danger yesUnfreezeAccountBtn">Remove</button>
		      </div>
		    </div>
		  </div>
		</div>
	</section>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
<!--    	<script src="/js/admin/admin_dashboard.js"></script> -->
    <script src="/js/admin/admin_tab_manager.js"></script>
    <script src="/js/admin/admin_users_list.js"></script>
    <script src="/js/admin/admin_accepted_job_request.js"></script>
    <script src="/js/admin/admin_pending_job_request.js"></script>
    <script src="/js/admin/admin_wallet_history.js"></script>
</body>
</html>