<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
<meta name="generator" content="Hugo 0.104.2">
<title>Checkout example · Bootstrap v5.2</title>

<link rel="canonical"
	href="https://getbootstrap.kr/docs/5.2/examples/checkout/">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>


<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.2/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


<style>
.image-container {
	width: 200px; /* 원하는 가로 크기로 지정 */
	height: 200px; /* 원하는 세로 크기로 지정 */
	text-align: left;
}

.image-container img {
	width: 33%;
	height: 33%;
	object-fit: cover;
}

<
style>.image-container2 {
	width: 100px; /* 원하는 가로 크기로 지정 */
	height: 100px; /* 원하는 세로 크기로 지정 */
	text-align: left;
}

.image-container2 img {
	width: 100px;
	height: 100px;
	object-fit: cover;
}

.image-container3 {
	width: 100px; /* 원하는 가로 크기로 지정 */
	height: 100px; /* 원하는 세로 크기로 지정 */
	text-align: left;
}

.image-container3 img {
	width: 100px;
	height: 100px;
	object-fit: cover;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

반응형 메뉴바 */
.sticky_container {
  position: relative;
  position: sticky;
  top: 0;
  z-index: 4;
}

.sticky_menu {
  margin: 0;
  max-width: auto;
  padding: 12px 0px 6px 0px;
  opacity: 0.9;
  border-bottom: 0.5px solid gray;
  background-color: white;
  backdrop-filter: blur(60px);
}

.sticky_text {
  font-size: calc(var(--menu_font_size) * 2.2);
  margin-right: 50%;
  font-weight: 600;
}

.sticky_btn {
  border: 0;
  background-color: transparent;
  transition: var(--btn_transition);
  margin:10px;
}

/* 패딩 마진 한줄에 기입시 상우하좌, 시계방향 */
.sticky_buy {
  color: white;
  background-color: #127ce5;
  border-radius: 20px;
  padding: 5px 10px 5px 10px;
}

.sticky_btn:hover {
  cursor: pointer;
  transform: scale(1.1);
}


</style>






























<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>
<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
<body class="bg-light">
 <div class="b-example-divider"></div>

  <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0" >
        <li class="sticky_btn"><a href="/trainerDetail?u_key=${trainerprofile.u_key}" class="sticky_btn" style="color:black; text-decoration:none;" >Profile</a></li>
      
    
       <li onclick="Centerview(1);" class="sticky_btn" style="color:black;">Center</li>
      <p><input type="hidden" name="tf_loadaddress" class="sticky_btn"  value="${trainerprofile.tf_loadaddress}" id="tf_loadaddress"></p>
      
    
       
        <li class="sticky_btn" ><a href="#" class="sticky_btn" style="color:black; text-decoration:none;">Review</a></li>
      
      </ul>

       
    </header>
  </div>
	<div class="container">
		<main>


<div id="centerview">
<div class="row g-5">
				<div class="col-md-7 col-lg-8">
			
				<h2 style="color: black; margin-top:15px;"><Strong>트레이너 ${trainerprofile.tf_name}님의 프로필</Strong></h2>
			</div>
<form  action="/trainerProfileinsert" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	
	<p><input type="hidden" name="u_id" value="${u_id }"></p>
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>사진</label><br>
					<label for="11" class="form-label mt-4">코치님 및 레슨 방식을
						잘 보여주는 사진</label> 
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white; width:930px; margin-bottom:10px">
						
						<c:forEach var="filelist" items="${filelist}">
							<a  href="../../../Img/${filelist.file_name}"  data-lightbox="example-set"><img src="../../../Img/${filelist.file_name}" width="175" height="175"   alt=""
							 ></a>
						</c:forEach>
						</div>
					
					<div class="row g-3">



						<div class="col-12">
							<label for="email" style="font-size: 20px; padding: 10px" form-labelmt-4" ><strong>선생님소개</label>
							<div class="input-group has-validation">
								<textarea cols="50" rows="10" class="form-control" id="username" name="tf_intro"
						readonly >${trainerprofile.tf_intro }</textarea>
									
							</div>
						</div>

						<div class="col-12">
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>레슨스케쥴
									(코치님의 레슨 가능한 스케줄)</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">

								<div style="display: flex;">
								
									<p style="text-align: left; padding-top: 10px;">평일</p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<input type="text" name="tf_daymorning"
										id="timeInput" style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4" readonly
										value="${trainerprofile.tf_daymorning}">~
									<input type="text" id="timeInput" name="tf_dayafter"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4" readonly
										value="${trainerprofile.tf_dayafter}">
								</div>
								<div style="display: flex;">
									
									<p style="text-align: left; padding-top: 10px;">토요일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" id="timeInput" name="tf_saterdaymorning"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4" readonly
										value="${trainerprofile.tf_saterdaymorning}">~
									<input type="text" id="timeInput" name="tf_saterafter"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4" readonly
										value="${trainerprofile.tf_saterafter}"> 
								</div>
								<div style="display: flex;">
									
									<p style="text-align: left; padding-top: 10px;">일요일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" id="timeInput" name="tf_sundaymorning"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4"
										value="${trainerprofile.tf_sundaymorning}" readonly
										>~
									<input type="text" id="timeInput"
										style="width: 140px; flex: 0.2; height: 40px;" name="tf_sundayafter"
										class="form-control" oninput="formatTime(this)" maxlength="4" readonly
										value="${trainerprofile.tf_sundayafter}">

								</div>
								<div style="display: flex;">
									<p style="text-align: left; padding-top: 10px;">휴무일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" name="tf_dayoff"
										style="width: 140px; flex: 0.45; height: 40px;" readonly
										class="form-control" value="${trainerprofile.tf_dayoff}">
								</div>
								<label for="username" class="form-label"
									style="font-size: 15px;">스케줄 참고 사항을 알려주세요 (40자 이내)</label> <input
									type="text" style="flex: 1; height: 40px;" class="form-control" name="tf_schedureintro" readonly
									value="${trainerprofile.tf_lessonintro }">
							</div>

							<br>
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>검증된자격사항</label>
							<div id="sectionbox" class="form-control" 
								style="padding: 10px; background-color: white;">


								<div style="display: flex;">
									

									<div class="col-md-10">
										<c:forEach var="filelist" items="${filelist_2}">
											<a  href="../../../Img/${filelist.file_name}"  data-lightbox="example-set2"><input type="text" class="form-control" style="flex: 0.5; " name="tf_certificatetitle"
												id="address2" placeholder="내용을 입력해주세요" value="${filelist.tf_certificatetitle }"readonly></a>
									</div>
									</div>
								


								</c:forEach>
								</div>
							<br>
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>프로그램</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div style="display: flex;"></div>
								<div>
									<label for="username2" class="form-label" 
										style="font-size: 15px;">프로그램 제목</label> <input
										type="text" id="username2" style="flex: 1; height: 40px;" name="tf_programtitle"
										class="form-control" value="${trainerprofile.tf_programtitle }" readonly>
								</div>
								<div>

									<label for="username2" class="form-label"
										style="font-size: 15px;">프로그램의 전문 분야</label><br>
									<div style="display: flex;">
									<c:forEach var="programsub" items="${programsub}">
										<input type="checkbox" style="flex: 0.3;  margin-right:10px;" name="tf_programsub" checked
											class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
										<label class="btn btn-outline-dark" for="btn-check-outlined">${programsub }</label><br>
								</c:forEach>
									
									
									
										
									</div>
									<div style="display: flex;">
										
									</div>
								</div>
								<label for="state" class="form-label">참고 사진</label> 
									<div>
									<c:forEach var="filelist" items="${filelist_3}">
							<a  href="../../../Img/${filelist.file_name}"  data-lightbox="example-set3"><img src="../../../Img/${filelist.file_name}" width="160" height="160"   alt=""
							 ></a>
							
						</c:forEach>
						</div>
								

								<div>
									<label for="myTextarea" class="form-label"
										style="font-size: 15px;">내용</label>
									<div class="input-group has-validation"> 
										<textarea cols="50" rows="10" class="form-control" name="tf_programintro" readonly
											id="myTextarea" 
											oninput="maxLengthCheck(this)" maxlength="10">${trainerprofile.tf_programintro }</textarea>
									</div>
								</div>
							</div>


							<br>
							<label for="email" style="font-size: 20px; padding: 10px;"
								form-labelmt-4" ><strong>레슨 이용 가격</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">
								<label for="email" style="font-size: 15px; margin: 10px;"
									form-labelmt-4" ><strong>이용가격 구분</label><br> <input
									type="text" style="flex: 1; height: 40px;" class="form-control" name="tf_lessontitle"
									value="${trainerprofile.tf_lessontitle }" readonly><br>
								<div id="sectionbox" class="form-control"
									style="padding: 10px; background-color: white;"">
						
									
					
									<div style="display: flex;">
										<P style="flex: 0.15;"></P>
										<P style="flex: 0.415;">횟수/개월</P>
										<P style="flex: 0.35;">단위</P>
										<P style="flex: 0.8;">가격</P>
									</div>
									<hr style="margin: 1px;">
									<div style="display: flex;">

										<input type="text" id="timeInput" name="tf_lessonnumber"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4"
											value="${trainerprofile.tf_lessonnumber }" readonly>

										<input class="form-control" id="country" name="tf_lessonunit"
											style="margin: 10px; width: 90px; flex: 0.1; height: 40px;"
											value="${trainerprofile.tf_lessonunit }" readonly
											>
										
									 <input type="text" id="rcvordAm" name="tf_lessonprice"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" value="${trainerprofile.tf_lessonprice }원" readonly>

									</div>
									<div style="display: flex;">
										<input type="text" id="timeInput"
											style="margin: 10px; margin-right: 123px; padding: 100; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" name="tf_lessonnumber" oninput="formatTime(this)" maxlength="4"
											value="${trainerprofile.tf_lessonnumber2 }" readonly>
										<input type="text" id="rcvordAm" name="tf_lessonprice"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" value="${trainerprofile.tf_lessonprice2 }원" readonly>
									</div>
									<div style="display: flex;">
										<input type="text" id="timeInput"
											style="margin: 10px; margin-right: 123px; padding: 100; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" name="tf_lessonnumber" oninput="formatTime(this)" maxlength="4"
											value="${trainerprofile.tf_lessonnumber3 }" readonly>
										<input type="text" id="rcvordAm" name="tf_lessonprice"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" value="${trainerprofile.tf_lessonprice3 }원" readonly>
									</div>
									<div style="display: flex;">
										<input type="text" id="timeInput"
											style="margin: 10px; margin-right: 123px; padding: 100; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" name="tf_lessonnumber" oninput="formatTime(this)" maxlength="4"
											value="${trainerprofile.tf_lessonnumber4 }" readonly>
										<input type="text" id="rcvordAm" name="tf_lessonprice"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control"value="${trainerprofile.tf_lessonprice4 }원" readonly>
									</div>
									
								<label for="email" style="font-size: 15px; margin: 10px;"
									form-labelmt-4" ><strong>레슨 1회 진행 시간이 어떻게 되나요?</label><br> 
							
													<input class="form-control" id="country" name="tf_lessontime"
											style="margin: 10px; width: 100px; flex: 0.1; height: 40px;"
											value="${ trainerprofile.tf_lessontime}" readonly>
											
										</input>
										<label for="email" style="font-size: 15px; margin: 10px;"
									form-labelmt-4" ><strong>센터 회원권을 별도로 결제해야 하나요?</label><br> 
							
													<input class="form-control" id="country" name="tf_lessonoption"
											style="margin: 10px; width: 600px; flex: 0.1; height: 40px;"
												value="${ trainerprofile.tf_lessonoption}" readonly>
											
											
										</input>
										<label for="myTextarea" class="form-label"
										style="font-size: 15px;">가격 참고 사항</label>
									<div class="input-group has-validation">
										<textarea cols="50" rows="10" class="form-control"
											id="myTextarea"  readonly name="tf_lessonintro"
											oninput="maxLengthCheck(this)" maxlength="10">${ trainerprofile.tf_lessonintro}</textarea>
									</div>
								</div>

							</div>
<label for="email" style="font-size: 20px; padding:10px; form-labelmt-4" ><strong>한줄 인사말</label>
<p  style="font-size: 10px; margin-left:10px;"></p>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div style="display: flex;">
								

									<div class="col-md-10">
										<input type="text" class="form-control" style="flex: 0.5;" name="tf_hanjulintro"
											id="address2" value="${ trainerprofile.tf_hanjulintro}" readonly>
									</div>
								</div>
							</div>

							<hr class="my-4">

	
					
						</div>
						
						
					</div>
					</div>
					</div>
					</form>
		</main>
</div>
		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2017–2023 Company Name</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>


	<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>

	<script src="form-validation.js"></script>

	<script>
      function setThumbnail(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>

	<script>
      function setThumbnail2(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container2").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
      function setThumbnail3(event) {
          for (var image of event.target.files) {
            var reader = new FileReader();

            reader.onload = function(event) {
              var img = document.createElement("img");
              img.setAttribute("src", event.target.result);
              document.querySelector("div#image_container3").appendChild(img);
            };

            console.log(image);
            reader.readAsDataURL(image);
          }
        }
      
      function formatTime(input) {
    	  // 입력값에서 숫자만 추출
    	  var numbers = input.value.replace(/\D/g,'');
    	  // 숫자가 4자리인 경우에만 변환
    	  if (numbers.length === 4) {
    	    // 시간과 분으로 분리
    	    var hours = numbers.slice(0, 2);
    	    var minutes = numbers.slice(2);
    	    // 시간과 분을 시간 형식으로 변환
    	    var timeString = hours + ":" + minutes;
    	    // 변환된 값을 다시 입력값으로 설정
    	    input.value = timeString;
    	  }
    	}

   
    //이미지 팝업슬라이드
      lightbox.option({
    	    resizeDuration: 200,
    	    wrapAround: true,
    	    disableScrolling: false,
    	    fitImagesInViewport:false
    	})
    	
    	

function Centerview(test) {
    	
    	  let tf_loadaddress = $('#tf_loadaddress').val();
    	  
    		console.log('tf_loadaddress:'+tf_loadaddress);
    		
    		$.ajax({
    			method: "POST",
    			url: "aj-centerview",
    			data: { tf_loadaddress: tf_loadaddress }
    		})
    		.done(function( html ) {
    			//console.log(html);
    			$('#centerview').html(html);
    		});
    		
}
     







</script>
</body>
</html>
