$('.jobsTab').click(function(){
	$('.border-bottom').removeClass("activeTab").addClass("sidebarItem");
	$(this).removeClass("sidebarItem").addClass("activeTab");
	$('.jobsDropdown').css("display","");
});

$('.usersTab').click(function(){
	$('.activeJobs,.acceptedJobs').removeClass("activeDropdownJobs");	
	$('.border-bottom').removeClass("activeTab").addClass("sidebarItem");
	$(this).removeClass("sidebarItem").addClass("activeTab");
	$('.jobsDropdown').css("display","none");	
	$('.PendingJobRequest,.AcceptedJobRequest').css('display','none');
	$('.UsersTable').css("display","");
	$('.AdminWalletHistory,.PendingJobRequest,.AcceptedJobRequest').css("display","none");
	$('#UsersTable').DataTable().ajax.reload();
	
});
$('.adminTab').click(function(){
	$('.activeJobs,.acceptedJobs').removeClass("activeDropdownJobs");	
	$('.border-bottom').removeClass("activeTab").addClass("sidebarItem");
	$(this).removeClass("sidebarItem").addClass("activeTab");
	$('.jobsDropdown').css("display","none");		
});
$('.walletTab').click(function(){
	$('.activeJobs,.acceptedJobs').removeClass("activeDropdownJobs");	
	$('.border-bottom').removeClass("activeTab").addClass("sidebarItem");
	$(this).removeClass("sidebarItem").addClass("activeTab");
	$('.jobsDropdown').css("display","none");		
	
	$('.UsersTable,.PendingJobRequest,.AcceptedJobRequest,UsersTable').css("display","none");
	$('.AdminWalletHistory').css("display","");
	$('#AdminWalletHistory').DataTable().ajax.reload();
});

$('.activeJobs').click(function(){
	$(this).addClass("activeDropdownJobs");
	$('.acceptedJobs').removeClass("activeDropdownJobs");
	$('.PendingJobRequest').css('display','');
	$('.AdminWalletHistory,.AcceptedJobRequest,.UsersTable').css("display","none");
});
$('.acceptedJobs').click(function(){
	$(this).addClass("activeDropdownJobs");
	$('.activeJobs').removeClass("activeDropdownJobs");	
	$('.AcceptedJobRequest').css('display','');
	$('.AdminWalletHistory,.PendingJobRequest,.UsersTable').css("display","none");
});




