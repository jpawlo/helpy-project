$('.createRequest').click(function(){
	$('#exampleModalCenter').modal("show");
});
var firstAnimation = "";
var secondAnimation = "";
$(document).on('click','.nextBtn',function(){
	$('.firstPart').addClass("animated zoomOutLeft");
	firstAnimation = setInterval(function(){
		$('.firstPart').css("display","none");
	},400);
	secondAnimation = setInterval(function(){
		$('.secondPart').css("display","").addClass("animated zoomInLeft");
	},450);
});