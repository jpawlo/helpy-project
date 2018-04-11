$(document).ready(function(){
	getListOfBuildings();
	displayUserInformation();
	
	setInterval(function(){
		userBalanceCheck();		
	},60000);
});

$('.okayButtonAddCoinBtn').click(function(){
	$('#modalForAddCoinInformation').modal("hide");
});
$('.tapUpCoins').click(function(){
	$('#modalForAddCoinInformation').modal("show");
});
function displayUserInformation(){
	$.ajax({
		url:"/user/getUserInformation/userProfile",
		type:"POST",
/*		headers	:	{
			'Accept' : 'application/json',
			'Content-Type' : 'application/json'
		},*/
		success:function(responseData){
			if(responseData.length != "0"){
				$.each(responseData,function(index,value){
						$('input[name="adminValidation"]').val(value.adminCertified);
						$('#userBalance').html(value.remainingBalance);
						$('.txtUserName').html(value.name);
						$('input[name="userRemainingBalance"]').val(value.remaining_balance);
						$('.chngeName').val(value.name);
						$('.chngeEmail').val(value.email);
						$('.chngeSocial').val(value.socialMediaAccount);
						$('.chngePhone').val(value.phoneNumber);
						$('.updateName').val(value.name);
						$('.updateSocial').val(value.socialMediaAccount);
						$('.updateEmail').val(value.email);
						$('.updatePhone').val(value.phoneNumber);
						$('input[name="userPercentage"]').val(value.userRate);
				});
			} else{
				location.href="/signin";
			}
		},
		error:function(){
			location.href="/signin";
		}
	});
}


function getListOfBuildings(){

	var btnList = "";
	$.ajax({
		url:"/getLaSalle/building/lists",
/*		headers	:	{
			'Accept' : 'application/json',
			'Content-Type' : 'application/json'
		},*/
		type:"POST",
		success:function(responseData){
			$.each(responseData,function(index,value){
				btnList = '<button type="button" class="dropdown-item" id="buildingName" value='+value.buildingName+'>'+value.buildingName+'</button>';
				$('.dropdown-menu').append(btnList);
			});
		}
	});
}



function userBalanceCheck(){
	var balanceNow = $('#userBalance').html();
	$.ajax({
		url:"/user/getUserInformation/userProfile",
		type:"POST",
/*		headers	:	{
			'Accept' : 'application/json',
			'Content-Type' : 'application/json'
		},*/
		success:function(responseData){
			if(responseData.length!="0"){
				$.each(responseData,function(index,value){
					if(value.remainingBalance != balanceNow){
						$('#userBalance').html(value.remainingBalance);
						$('input[name="userRemainingBalance"]').val(value.remainingBalance);
					}
				});
			} else{
				location.href="/signin";
			}
		}
	});
}