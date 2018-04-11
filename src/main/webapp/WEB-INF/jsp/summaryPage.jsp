<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Summary Page | Helpy</title>
	<link rel="icon" href="/img/helpy logo.png">	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<style>
		body{
			background:#e8e8e8;
		}
		.label{
			text-align:right;
		}
		h6{
			font-size:90%!important;
		}
		.col-3{
			margin-top:2%!important;
		}
	</style>
</head>
<body>
	

		<div class="card mx-auto mb-5" style="width:45%; margin-top:3%!important;">
			  <div class="card-body">
			  
				  	<div class="container">
				  		<div class="row">
					  		<div class="col">
					    		<h2 style="font-family:Ubuntu!important; font-size:400%!important; float:left; letter-spacing:-2.5px;">help<span class="text-primary">y</span></h2>
					    	</div>
					    	<div class="col" style="right:-30%!important;">
					    		<img src="/img/coupon.png" width="25%" height="auto">
					    	</div>
					    </div>
				    </div>
				    <div class="container mt-3">
				    
				    	<!-- Location -->
				    	<div class="row">
				    		<div class="col-3">
				    			<h6 class="float-right">Location:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" disabled value="Inside">
				    			<textarea class="form-control mt-2" name="txtOtherInformation" id="otherInformation" rows="3" disabled>Some other informations out here...</textarea>
				    		</div>
				    	</div>
				    	
				    	<!-- Job type -->
				    	<div class="row mt-4">
				    		<div class="col-3">
				    			<h6 class="float-right">Job type:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" disabled value="Multiple Delivery">
				    		</div>
				    	</div>
				    	
				    	<!-- Category and Time -->
				    	<div class="row mt-4">
				    		<div class="col-3">
				    			<h6 class="float-right">Category:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" disabled value="Job Category">
				    		</div>
				    		<div class="col d-flex flex-row">
				    			<h6 class="mt-2">Time:</h6>
				    			<input type="text" class="form-control ml-2" disabled value="08:09 AM">
				    		</div>
				    	</div>			
				    		    	
				    	<!-- Details -->
				    	<div class="row mt-4">
				    		<div class="col-3">
				    			<h6 class="float-right">Details:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" disabled value="Details 1,2,3,4,5...">
				    			<input type="text" class="form-control mt-1" disabled value="Details 1,2,3,4,5...">
				    			<input type="text" class="form-control mt-1" disabled value="Details 1,2,3,4,5...">
				    			<input type="text" class="form-control mt-1" disabled value="Details 1,2,3,4,5...">
				    			<input type="text" class="form-control mt-1" disabled value="Details 1,2,3,4,5...">
				    		</div>
				    	</div>		
				    				    	
				    	<!-- Cash required -->
				    	<div class="row mt-4">
				    		<div class="col-3">
				    			<h6 class="float-right">Cash required:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<input type="text" class="form-control" disabled value="$ 520.00">
				    		</div>
				    	</div>	
				    	
				    	<!-- Other information:  -->
				    	<div class="row">
				    		<div class="col-3">
				    			<h6 class="float-right">Other information:</h6>				    		
				    		</div>
				    		<div class="col">
				    			<textarea class="form-control mt-2" name="txtOtherInformation" id="otherInformation" rows="3" disabled>Some other informations out here...</textarea>
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
					    <div class="custom-control custom-checkbox" style="margin-left:38%!important;">
						  	<input type="checkbox" class="custom-control-input" id="customCheck1">
						  	<label class="custom-control-label" for="customCheck1" style="font-size:90%!important;">Agree to Terms & Agreements</label>
						</div>
						
						<div class="float-right d=flex flex-row mt-4">
							<button type="button" class="btn btn-primary">Submit</button>
							<button type="button" class="btn btn-danger">Cancel</button>
						</div>

				    
			  </div>
				
		
		</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>