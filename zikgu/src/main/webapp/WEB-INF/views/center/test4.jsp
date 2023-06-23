<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<style>
			#container {
				border:1px solid #dddddd;
				width:100%;
				height:100px;
				overflow:hidden;
			}

			#container div {
				position:relative;
				width:10%;
				float:left;
				overflow:hidden;
			}

			#container div img {
				width:100%;
				height:100%;
			}
</style>
<body>
<body>
		<div id="container">
			<div id="one">
				<img src="http://15.164.62.221:8080/static/img/health/img/028573da-5859-418b-b210-36cbfa566047.JPG"/>
				<img src="images/11.jpg" />
				<img src="images/21.jpg" />
			</div>
			<div id="two">
				<img src="images/2.jpg" />
				<img src="images/12.jpg" />
				<img src="images/22.jpg" />
			</div>
			<div id="three">
				<img src="images/3.jpg" />
				<img src="images/13.jpg" />
				<img src="images/23.jpg" />
			</div>
			<div id="four">
				<img src="images/4.jpg" />
				<img src="images/14.jpg" />
				<img src="images/24.jpg" />
			</div>
			<div id="five">
				<img src="images/5.jpg" />
				<img src="images/15.jpg" />
				<img src="images/25.jpg" />
			</div>
			<div id="six">
				<img src="images/6.jpg" />
				<img src="images/16.jpg" />
				<img src="images/26.jpg" />
			</div>
			<div id="seven">
				<img src="images/7.jpg" />
				<img src="images/17.jpg" />
				<img src="images/27.jpg" />
			</div>
			<div id="eight">
				<img src="images/8.jpg" />
				<img src="images/18.jpg" />
				<img src="images/28.jpg" />
			</div>
			<div id="nine">
				<img src="images/9.jpg" />
				<img src="images/19.jpg" />
				<img src="images/29.jpg" />
			</div>
			<div id="ten">
				<img src="images/10.jpg" />
				<img src="images/20.jpg" />
				<img src="images/30.jpg" />
			</div>
		</div>
		<br/><br/><br/>
		<input type="button" onclick="roolet()" value="돌려라!" style="margin-top:100px;"/>
	</body>




<div class="random_wrap">
    <div class="txt">
        <div class="ing"><strong>추첨 중...</strong></div>
        <div class="result"><strong><span id="countR">12%</span>당첨!</strong></div>
    </div>

    <div class="num">
        <span id="count1">1</span>
        <span id="count2">2</span>
        <span id="cUnit">%</span>
    </div>

    <div class="util result">
        <strong>내 쿠폰 확인하기</strong>
    </div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        var couponNum1 = 5 // 실제 당첨 10의 자리 수
        , couponNum2 = 2 // 실제 당첨 1의 자리 수
        , loadingT = 2000 // 쿠폰 추첨 중인 시간
        , couponUnit = ['!','@','#','$','%','^','&','*']
        , unitArr = 0;

        // ing...
        var randomUnit = setInterval(function(){
            $('#cUnit').text(couponUnit[unitArr++]);
            if(unitArr >= couponUnit.length) unitArr = 0;
        },60);
        var randomNum1 = setInterval(function(){$('#count1').text(parseInt(Math.random() * 10))},60);
        var randomNum2 = setInterval(function(){$('#count2').text(parseInt(Math.random() * 10))},60);
		
        // result
        setTimeout(function(){
            clearInterval(randomUnit);
            $('#cUnit').text('%');
        },loadingT + 540);
        setTimeout(function(){
            clearInterval(randomNum2);
            $('#count2').text(couponNum2);
        },loadingT + 1080);
        setTimeout(function(){
            clearInterval(randomNum1);
            $('#count1').text(couponNum1);
            $('#countR').text(couponNum1.toString() + couponNum2.toString() + '%');
            $('.random_wrap').addClass('end');
        },loadingT + 1620);
    });
 </script>
</html>	