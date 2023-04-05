<%@ page contentType="text/html; charset=UTF-8"%>

<style>
	* {box-sizing: border-box;}
	body {font-family: Verdana, sans-serif;}
	.mySlides {display: none;}
	img {vertical-align: middle;}
	
	/* Slideshow container */
	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 24px 36px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active {
	  background-color: #717171;
	}
	
	/* Fading animation */
	.fade {
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	/* On smaller screens, decrease text size */
	@media only screen and (max-width: 300px) {
	  .text {font-size: 11px}
	}
</style>

<nav>
	<!-- 2023.03.30 20184431 강민찬, 슬라이드쇼 보여주기(4장) -->
	<div class="slideshow-container">
		<div class="mySlides fade">
	  		<img 
	  			src="https://image.istarbucks.co.kr/common/img/coffee/espresso/americano_img01.jpg" 
	  			style="width:100%">
	  		<div class="text">아메리카노는 에스프레소의 진한 풍미를 잘 느낄 수 있는 음료입니다.</div>
		</div>
	
		<div class="mySlides fade">
			<img
				src="https://image.istarbucks.co.kr/common/img/coffee/espresso/caramel_macchato_img01.jpg"
				style="width: 100%">
			<div class="text">여러 층으로 이루어진 달콤한 마키아또는 본연의 달콤한 맛이 느껴질 때까지 부드러운 스팀 밀크가 먼저 입안을 채웁니다.</div>
		</div>
	
		<div class="mySlides fade">
			<img
				src="https://image.istarbucks.co.kr/common/img/coffee/espresso/cappuccino_img01.jpg"
				style="width: 100%">
			<div class="text">카푸치노는 바리스타가 가진 가장 고도화된 기술입니다.</div>
		</div>
	
		<div class="mySlides fade">
			<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/latte_img01.jpg"
				style="width: 100%">
			<div class="text">라떼는 취향에 어울리는 스타일로 다양하게 즐길 수 있는 에스프레소 음료입니다.</div>
		</div>
	</div>

	<div style="text-align:center">
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span>
	  <span class="dot"></span> 
	</div>

	<script>
		let slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  let i;
		  let slides = document.getElementsByClassName("mySlides");
		  let dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace("active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</nav>