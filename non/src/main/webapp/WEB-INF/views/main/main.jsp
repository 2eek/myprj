<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/timer.css" rel="stylesheet" type="text/css">
<link href="css/slider.css" rel="stylesheet" type="text/css">
</head>

<body style="margin: 0">

<!-- 타이머 -->
<div class="main-container center">

<div class="circle-container center">
<div class="semicircle"></div>
<div class="semicircle"></div>
<div class="outermost-circle"></div>
</div>
</div>




	<!--  기본 사진 슬라이드 -->

	<div style="overflow: hidden">

		<div class="container">

			<div class="inner">
				<img src="img/1.jpg">
			</div>

			<div class="inner">
				<img src="img/2.jpg">
			</div>

			<div class="inner">
				<img src="img/3.jpg">
			</div>
			<div class="inner">
				<img src="img/1.jpg">
			</div>

		</div>
		</div>


		<div>
			<span class="prevButton1">◀</span>
			<!--이전 버튼 -->
			<button class="버튼1">1</button>
			<button class="버튼2">2</button>
			<button class="버튼3">3</button>
			<button class="버튼4">4</button>
			<span class="nextButton1">▶</span>
			<!--다음 버튼 -->
		</div>
	


<!-- 헬로월드. 인터벌타이머쓸 것. -->
<div id="my_box">
  <h3>Hello World</h3>
</div>
<button id="start">Start</button>
<button id="stop">Stop</button>



 <script src="js/main.js"></script>
 
 
 
 <!--  자동 캐러셀 slider--->
 <!-- https://swimfm.tistory.com/entry/%EC%88%9C%EC%88%98-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8%EB%A1%9C-%EC%9E%90%EB%8F%99-%EC%BA%90%EB%9F%AC%EC%85%80-%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C-%EB%A7%8C%EB%93%A4%EA%B8%B0-%EC%98%88%EC%A0%9C%EC%99%80-%EB%B0%A9%EB%B2%95-%EA%B0%95%EC%A2%8C -->
 <div class="content"> <!--전체를 감쌀 뼈대-->
<div class="slides">  <!--슬라이드 아이템을 감쌀 뼈대-->
  <div class="slide_item"></div>  <!--슬라이드될 아이템들 -->
  <div class="slide_item"></div>
  <div class="slide_item"></div>
  <div class="slide_item"></div>
  <div class="slide_item"></div>
  <div class="slide_item"></div>
</div>
<span class="nextButton">▶</span>  <!--다음 버튼 -->
<span class="prevButton">◀</span>   <!--이전 버튼 -->
  <div class="Thumbnail">  <!--썸네일을 감쌀 뼈대 -->
 <div class="thumbnail_item"></div>   <!--썸네일 아이템들 -->
  <div class="thumbnail_item"></div>
  <div class="thumbnail_item"></div>
  <div class="thumbnail_item"></div>
  <div class="thumbnail_item"></div>
  <div class="thumbnail_item"></div>
  </div> 
</div>
 
 
 
  <script src="js/slider.js"></script>

<!-- ---------------------최하단 시계 서버 끊겨도 계속 진행 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<div id="the-final-countdown">
<p></p>

</div>
<script>
    setInterval(function time(){
      //시간 초기화
      var d = new Date();
      var hours = 24 - d.getHours();
      var min = 60 - d.getMinutes();
      var sec = 60 - d.getSeconds();
      //분이 있으면 시 반올림
      if(min =='00'){
          hours = 24 - d.getHours();
        }else{
          hours = 23 - d.getHours();
      }
      //초가 있으면 분 반올림        
      if(sec =='00'){
          min = 60 - d.getMinutes();
        }else{
          min = 59 - d.getMinutes();
      }
      //1자리수라면 0을 붙혀라
      if((hours + '').length == 1){
        hours = '0' + hours;
      }
      if((min + '').length == 1){
        min = '0' + min;
      }
      if((sec + '').length == 1){
        sec = '0' + sec;
      }
      //날짜를 표기하고 딜레이는 1초(1000)마다 바뀌게
      jQuery('#the-final-countdown p').html
          ('<span class="t_hour">'+hours+'</span>'+
           '<span class="t_colon">:</span>'+
           '<span class="t_min">'+min+'</span>'+
           '<span class="t_colon">:</span>'+
           '<span class="t_sec">'+sec+'</span>')
    }, 1000);
</script> 

 
  
 


</body>
</html>
