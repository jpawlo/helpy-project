$(document).ready(function(){
	$('.topJumbotron').addClass("animated bounceIn");
});

$(window).scroll(function(){
	var scrollTop = $(window).scrollTop();
	console.log(scrollTop);
	if(scrollTop>100){	
		$('.imgFirstPart').addClass("animated tada");
	}	
		if(scrollTop>750){
			$('.helpyNowImg').addClass("animated slideInRight");
		}
			if(scrollTop>1340){
				$('.helpRentalImg').addClass("animated slideInLeft");
			}
				if(scrollTop>1870){
						$('.bottomImgOne').addClass("animated slideInLeft");
						$('.bottomImgTwo').addClass("animated slideInRight");
				}
});
$('.rentals').click(function(){
	location.href="products.html";
});
$('.helpyNowLink').click(function(){
	location.href="helpynow.html";
});