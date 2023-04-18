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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>
<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
.image-container2 {
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
	width: 70px; /* 원하는 가로 크기로 지정 */
	height: 70px; /* 원하는 세로 크기로 지정 */
	text-align: left;
}

.image-container3 img {
	width: 70px;
	height: 70px;
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
</style>


<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>
<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
<body class="bg-light">

	<div class="container">
		<main>




			<div class="py-5 text-center">
				<h2 style="color:black;">트레이너 프로필 등록</h2>
			</div>
<form  action="/trainerProfileinsert" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	
   
	<p><input type="hidden" name="u_key" value="${u_key }"></p>
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					
					<label for="email" style="font-size: 20px; padding:5px; form-labelmt-4" ><strong>트레이너명</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div style="display: flex;">
								

									<div class="col-md-10">
										<input type="text" class="form-control" style="flex: 0.5;" name="tf_name"
											id="address2" placeholder="내용을 입력해주세요">
									</div>
								</div>
							</div>
					<label for="tf_gender" class="form-label"
							
										style="font-size: 15px;">성별을 선택해주세요.</label><br>
										<div style="display: flex;">
										  <input type="checkbox" style="flex: 0.3;" name="tf_gender"
										    class="btn-check" id="btn-check-outlined12" autocomplete="off" value="남성" checked>
										  <label class="btn btn-outline-dark" for="btn-check-outlined12">남성</label><br>
										  <input type="checkbox" style="flex: 0.3; " name="tf_gender"
										    class="btn-check" id="btn-check-outlined13" value="여성"
										    autocomplete="off" > 
										  <label class="btn btn-outline-dark" for="btn-check-outlined13">여성</label><br>
										</div>
				
				
				
					<label for="email" style="font-size: 20px; margin-top:20px;" form-labelmt-4" ><strong>사진</label><br>
					<label for="formFile2" class="form-label mt-4">코치님 및 레슨 방식을
						잘 보여주는 사진을 올려주세요.</label> 
						<input class="form-control" type="file"
						name="tf_photo1" accept="image/*" onchange="setThumbnail(event);"
						id="formFile2" multiple />
					<div class="image-container" id="image_container"></div>
					
					
					
					
					<div class="row g-3">



						<div class="col-12">
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>선생님소개</label>
							
							
							<div class="input-group has-validation">
								<textarea cols="50" rows="10" class="form-control" id="username" name="tf_intro"
									placeholder="소개글을 입력해주세요"></textarea>
							</div>
						</div>

						<div class="col-12">
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>레슨스케쥴
									(코치님의 레슨 가능한 스케줄을 알려주세요.)</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">

								<div style="display: flex;">
									<input type="checkbox" id="scales" name="tf_day" unchecked>&nbsp;
									<p style="text-align: left; padding-top: 10px;">평일</p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<input type="text" name="tf_daymorning"
										id="timeInput" style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4">~
									<input type="text" id="timeInput" name="tf_dayafter"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4">
								</div>
								<div style="display: flex;">
									<input type="checkbox" id="scales" name="tf_saterafter" unchecked>&nbsp;
									<p style="text-align: left; padding-top: 10px;">토요일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" id="timeInput" name="tf_saterdaymorning"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4">~
									<input type="text" id="timeInput" name="tf_saterafter"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4">
								</div>
								<div style="display: flex;">
									<input type="checkbox" id="scales" name="tf_sunday" unchecked>&nbsp;
									<p style="text-align: left; padding-top: 10px;">일요일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" id="timeInput" name="tf_sundaymorning"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control" oninput="formatTime(this)" maxlength="4">~
									<input type="text" id="timeInput"
										style="width: 140px; flex: 0.2; height: 40px;" name="tf_sundayafter"
										class="form-control" oninput="formatTime(this)" maxlength="4">

								</div>
								<div style="display: flex;">
									<p style="text-align: left; padding-top: 10px;">&nbsp;&nbsp;&nbsp;휴무일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" name="tf_dayoff"
										style="width: 140px; flex: 0.45; height: 40px;"
										class="form-control" placeholder="휴무일을 입력해주세요">
								</div>
								<label for="username" class="form-label"
									style="font-size: 15px;">스케줄 참고 사항을 알려주세요 (40자 이내)</label> <input
									type="text" style="flex: 1; height: 40px;" class="form-control" name="tf_schedureintro"
									placeholder="내용을입력해주세요">
							</div>

							<br>
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>검증된자격사항</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div  >
									<div style="display: flex;">
									<select class="form-select" name="tf_certificate" id="country" style="flex: 0.85;"
										required>
										<option value="학력">학력</option>
										<option value="자격증">자격증</option>
										<option value="자격증">수상경력</option>
										<option value="자격증">근무경력</option>
									</select>

									<div class="col-md-8.5">
										<input type="text" class="form-control" style="width:480px;flex: 0.5;" name="tf_certificatetitle"
											id="address2" placeholder="내용을 입력해주세요">
									</div>
									
									
									<button type = "button" style="flex:1; width:210px;"class="btn btn-outline-dark" id = "deleteQuestion" qMaster="${sv.sNo}" qIndex="${q.qIndex}">질문 삭제</button>
									</div>
								<label for="state" name="tf_certificatephoto" class="form-label">증명서/사진등록[필수]</label> 
										<input class="form-control" type="file"
											name="tf_cer_photo1" accept="image/*" onchange="setThumbnail2(event);"
											id="formFile2" multiple />
								<div class="image-container2" id="image_container2"></div>
								</div>
								<div><br><button type = "button" class="btn btn-outline-dark" id ="addCertificate">자격사항 추가하기</button>
									
								</div>
								
								
								
							</div>



							<br>
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>프로그램</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div style="display: flex;"></div>
								<div>
									<label for="username2" class="form-label" 
										style="font-size: 15px;">프로그램 제목을 작성해주세요 (40자 이내)</label> <input
										type="text" id="username2" style="flex: 1; height: 40px;" name="tf_programtitle"
										class="form-control" placeholder="제목을입력해주세요">
								</div>
								<div>

									<label for="username2" class="form-label"
										style="font-size: 15px;">프로그램의 전문 분야를 선택해주세요 (1~3개)</label><br>
									<div style="display: flex;">
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined" autocomplete="off" value="벌크업">
										<label class="btn btn-outline-dark" for="btn-check-outlined">벌크업</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined2" autocomplete="off" value="식단관리">
										<label class="btn btn-outline-dark" for="btn-check-outlined2">식단관리</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined3" autocomplete="off" value="기능개선">
										<label class="btn btn-outline-dark" for="btn-check-outlined3">기능개선</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined4" autocomplete="off" value="바른체형">
										<label class="btn btn-outline-dark" for="btn-check-outlined4">바른체형</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined5" autocomplete="off" value="다이어트">
										<label class="btn btn-outline-dark" for="btn-check-outlined5">다이어트</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined6" autocomplete="off" value="하체라인">
										<label class="btn btn-outline-dark" for="btn-check-outlined6">하체라인</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined7" autocomplete="off" value="기초체력">
										<label class="btn btn-outline-dark" for="btn-check-outlined7">기초체력</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined8" autocomplete="off" value="근력향상">
										<label class="btn btn-outline-dark" for="btn-check-outlined8">근력향상</label><br>
									</div>
									<div style="display: flex;">
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined9" autocomplete="off" value="대회준비">
										<label class="btn btn-outline-dark" for="btn-check-outlined9">대회준비</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub	"
											class="btn-check" id="btn-check-outlined10" value="산전산후케어"
											autocomplete="off"> <label
											class="btn btn-outline-dark" for="btn-check-outlined10">산전산후케어</label><br>
										<input type="checkbox" style="flex: 0.3;" name="tf_programsub"
											class="btn-check" id="btn-check-outlined11" value="바디프로필"
											autocomplete="off"> <label
											class="btn btn-outline-dark" for="btn-check-outlined11">바디프로필</label><br>
									</div>
								</div>
								<label for="state" class="form-label">참고 사진을 올릴 수
									있어요(선택)</label>
									
									<input class="form-control" type="file"
											name="tf_photo3" accept="image/*" onchange="setThumbnail3(event);"
											id="formFile2" multiple />
									<div style="display: flex;">
									<div class="image-container3" style="flex: 0.4;" id="image_container3"></div>
									
								
								<div style="flex: 0.6;">
									<label for="myTextarea" class="form-label"
										style="font-size: 15px;">내용을 상세히 작성해주세요</label>
									<div class="input-group has-validation">
										<textarea cols="50" rows="10" class="form-control" name="tf_programintro"
											id="myTextarea" placeholder="내용을 입력해주세요"
											oninput="maxLengthCheck(this)" ></textarea>
									</div>
								</div>
								</div>
								
							</div>


							<br>
							<label for="email" style="font-size: 20px; padding: 10px;"
								form-labelmt-4" ><strong>레슨 이용 가격</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">
								<label for="email" style="font-size: 15px; margin: 10px;"
									form-labelmt-4" ><strong>이용가격 구분 1</label><br> <input
									type="text" style="flex: 1; height: 40px;" class="form-control" name="tf_lessontitle"
									placeholder="ex)1:1 프라이빗 PT"><br>
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
											class="form-control" oninput="formatTime(this)" maxlength="4">

										<select class="form-select" id="country" name="tf_lessonunit"
											style="margin: 10px; width: 100px; flex: 0.1; height: 40px;"
											" required>
											<option value="회">회</option>
											<option value="개월">개월</option>
										</select> <input type="text" id="rcvordAm" name="tf_lessonprice"
											style="margin: 10px; width: 140px; flex: 0.3; height: 40px;"
											class="form-control" placeholder="숫자만입력">

									</div>
									<div style="display: flex;">
										<input type="text" id="timeInput"
											style="margin: 10px; margin-right: 123px; padding: 100; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" name="tf_lessonnumber2" oninput="formatTime(this)" maxlength="4">
										<input type="text" id="rcvordAm" name="tf_lessonprice2"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" placeholder="숫자만입력">
									</div>
									<div style="display: flex;">
										<input type="text" id="timeInput"
											style="margin: 10px; margin-right: 123px; padding: 100; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" name="tf_lessonnumber3" oninput="formatTime(this)" maxlength="4">
										<input type="text" id="rcvordAm" name="tf_lessonprice3"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" placeholder="숫자만입력">
									</div>
									<div style="display: flex;">
										<input type="text" id="timeInput"
											style="margin: 10px; margin-right: 123px; padding: 100; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" name="tf_lessonnumber4" oninput="formatTime(this)" maxlength="4">
										<input type="text" id="rcvordAm" name="tf_lessonprice4"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" placeholder="숫자만입력">
									</div>
							
								<label for="email" style="font-size: 15px; margin: 10px;"
									form-labelmt-4" ><strong>레슨 1회 진행 시간이 어떻게 되나요?</label><br> 
							
													<select class="form-select" id="country" name="tf_lessontime"
											style="margin: 10px; width: 100px; flex: 0.1; height: 40px;"
											" required>
											<option value="30분">30분</option>
											<option value="40분">40분</option>
											<option value="50분">50분</option>
											<option value="60분">60분</option>
											<option value="70분">70분</option>
											<option value="80분">80분</option>
											<option value="90분">90분</option>
											<option value="100분">100분</option>
											<option value="110분">110분</option>
											<option value="120분">120분</option>
										</select>
										<label for="email" style="font-size: 15px; margin: 10px;"
									form-labelmt-4" ><strong>센터 회원권을 별도로 결제해야 하나요?</label><br> 
							
													<select class="form-select" id="country" name="tf_lessonoption"
											style="margin: 10px; width: 600px; flex: 0.1; height: 40px;"
											" required>
											<option value="센터회원권을 별도로 결제해야함">센터회원권을 별도로 결제해야함</option>
											<option value="센터회원권을 별도로 결제해야할 필요없음">센터회원권을 별도로 결제해야할 필요없음</option>
											
										</select>
										<label for="myTextarea" class="form-label"
										style="font-size: 15px;">가격 참고 사항을 알려주세요</label>
									<div class="input-group has-validation">
										<textarea cols="50" rows="10" class="form-control"
											id="myTextarea" placeholder="내용을 입력해주세요" name="tf_lessonintro"
											oninput="maxLengthCheck(this)" ></textarea>
									</div>
								</div>

							</div>
							
<label for="email" style="font-size: 20px; padding:10px; form-labelmt-4" ><strong>한줄 인사말</label>
<p  style="font-size: 10px; margin-left:10px;">코치님의 인상적인 한줄 인사말을 작성해주세요</p>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div style="display: flex;">
								

									<div class="col-md-10">
										<input type="text" class="form-control" style="flex: 0.5;" name="tf_hanjulintro"
											id="address2" placeholder="내용을 입력해주세요">
									</div>
								</div>
							</div>
							<label for="email" style="font-size: 20px; padding:10px; form-labelmt-4" ><strong>센터주소</label>
							<div id="sectionbox" class="form-control" 
								style="padding: 10px; background-color: white;">
									<div style="display: flex;">
										<input type="text" style= "flex: 0.5; margin:2px;" class="form-control"  name="tf_postcode" id="sample4_postcode" placeholder="우편번호" readonly>
										<input type="button"  style= "flex: 0.5; margin:2px;" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"  class="form-control" ><br>
									</div>
										<input type="text" class="form-control" style="margin: 2px;" id="sample4_roadAddress" name="tf_loadaddress" placeholder="도로명주소" readonly>
										<input type="text" class="form-control"  style="margin: 2px;"  id="sample4_jibunAddress" name="c_oldaddress" placeholder="지번주소" readonly>
										<span id="guide" style="color:#999;display:none"></span>
										<input type="text"  class="form-control"  style="margin: 2px;"  id="sample4_detailAddress" name="c_detailaddress" placeholder="상세주소" >
										<input type="text" class="form-control"  style="margin: 2px;"  id="sample4_extraAddress" name="c_option" placeholder="참고항목" readonly>
								</div>

							<hr class="my-4">

							<button class="w-100 btn btn-primary btn-lg" type="submit">등록하기</button>
					
						</div>
						
						
					</div>
					</div>
					</div>
					</form>
		</main>

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
      function setThumbnail4(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container4").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>
<script>
      function setThumbnail5(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container5").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>
<script>
      function setThumbnail6(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container6").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>
<script>
      function setThumbnail7(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container7").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>
<script>
      function setThumbnail8(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container8").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>
<script>
      function setThumbnail9(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container9").appendChild(img);
          };

          console.log(image);
          reader.readAsDataURL(image);
        }
      }
</script>
<script>
      function setThumbnail10(event) {
        for (var image of event.target.files) {
          var reader = new FileReader();

          reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container10").appendChild(img);
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

    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
      function sample4_execDaumPostcode() {
          new daum.Postcode({
              oncomplete: function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var roadAddr = data.roadAddress; // 도로명 주소 변수
                  var extraRoadAddr = ''; // 참고 항목 변수

                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                      extraRoadAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if(data.buildingName !== '' && data.apartment === 'Y'){
                     extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if(extraRoadAddr !== ''){
                      extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;
                  document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                  
                  // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                  if(roadAddr !== ''){
                      document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else {
                      document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");
                  // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                  if(data.autoRoadAddress) {
                      var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                      guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                      guideTextBox.style.display = 'block';

                  } else if(data.autoJibunAddress) {
                      var expJibunAddr = data.autoJibunAddress;
                      guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                      guideTextBox.style.display = 'block';
                  } else {
                      guideTextBox.innerHTML = '';
                      guideTextBox.style.display = 'none';
                  }
              }
          }).open();
      }

      var filecount=1;
    //자격조건 추가
    $(document).on('click', '#addCertificate', function () {
    	filecount = filecount+1;
    	console.log(filecount);
	$("#addCertificate").parent().before("<div style=' margin-top:10px; background-color: white;'><div style='display: flex;'><select class='form-select' name='tf_certificate' id='country' style='flex: 0.85;'required><option value='학력'>학력</option><option value='자격증'>자격증</option><option value='자격증'>수상경력</option><option value='자격증'>근무경력</option></select><div class='col-md-8.5'><input type='text' class='form-control' style='width:480px;flex: 0.5;' name='tf_certificatetitle'id='address2' placeholder='내용을 입력해주세요'></div><button type = 'button'style='flex:1; width:210px;'class='btn btn-outline-dark' id = 'deleteQuestion' qMaster='${sv.sNo}' qIndex='${q.qIndex}'>질문 삭제</button></div><label for='state' name='tf_certificatephoto' class='form-label'>증명서/사진등록[필수]</label><input class='form-control' type='file' name='tf_cer_photo" + filecount + "' 'filecount' accept='image/*' onchange='setThumbnail2(event);'id='formFile2' multiple /><div class='image-container2' id='image_container2'></div><input type='hidden' name='filecount' value='"+filecount+"'></div>")
	});
    
    //자격조건 삭제
    $(document).on('click', '#deleteQuestion', function () {
    	filecount = filecount-1;
    	console.log(filecount);
    	$(this).parent().parent().remove();
});
    
    //체크박스 성별 1개만선택
   const checkboxes = document.getElementsByName("tf_gender");

for (let i = 0; i < checkboxes.length; i++) {
  checkboxes[i].addEventListener("click", function() {
    if (this.checked) {
      for (let j = 0; j < checkboxes.length; j++) {
        if (i !== j) {
          checkboxes[j].checked = false;
        }
      }
    } else if (!this.checked) {
      // 현재 선택된 체크박스가 없으면 첫 번째 체크박스를 선택 상태로 만듦
      checkboxes[0].checked = true;
    }
  });
}





    	
</script>
</body>
</html>