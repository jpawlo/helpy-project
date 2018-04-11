$(document).ready(function(){
	getAdminWalletTotalBalance();
	$('#AdminWalletHistory').DataTable({
        ajax: {
            url: '/admin/get/all/wallet/history',
            type:'POST',
            dataSrc: ''
        },
        columns: [ 
        	{ data : "jobId" },
        	{ data : "clientId" },
        	{ data : "doerId" },
        	{ data : "startTime" },
        	{ data : "endTime"},
        	{ data : "status" },
        	{ data : "deliveryFee" },
        	{ data : "systemFee" }
        ]		
	});
})

function getAdminWalletTotalBalance(){
	$.ajax({
		url:"/admin/wallet/get/total",
		type:"POST",
		dataType:"json",
		success:function(responseData){
			$('.systemTotalIncome').html("&#x20B1; "+responseData.total);
		}
	});
}

