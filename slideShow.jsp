<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
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
  padding: 8px 12px;
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
</head>
<body>

<h2>Automatic SlideShow</h2>
<p>Change image every 2 seconds:</p>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 6</div>
  <img src="https://file2.nocutnews.co.kr/newsroom/image/2017/05/29/20170529162847962199.jpg" style="width:100%">
  <div class="text">1. 무등산</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202111/01/505c302c-fca0-4ca2-bf71-b4875fa289d6.jpg" style="width:100%">
  <div class="text">2. 한라산 백록담</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <img src="https://post-phinf.pstatic.net/MjAxOTA0MDFfMTUz/MDAxNTU0MDg2OTA2NTMz.BxQJ2l6bKwZHLqa2z2lkwJsP_pWXtJ6voOjuBzRbBm0g.buQXQpKr0pczk9LBIeWLRB0ru1069G0qkMAK2WgAzmog.JPEG/3.jpg?type=w1200" style="width:100%">
  <div class="text">3. 오로라(아이슬란드, 캐나다)</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <img src="https://cdn.imweb.me/thumbnail/20201126/74167caae1c94.png" style="width:100%">
  <div class="text">4. apple</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <img src="https://src.hidoc.co.kr/image/lib/2020/12/11/1607668328502_0.jpg" style="width:100%">
  <div class="text">5. banana</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <img src="https://images.mypetlife.co.kr/content/uploads/2019/06/09153700/close-up-cut-delicious-953215.jpg" style="width:100%">
  <div class="text">6. kiwi</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
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

</body>
</html> 
