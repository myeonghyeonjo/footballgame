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


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>


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
p {
	color: black;
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


  <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <p class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
      </p>

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
			<p><input type="hidden" name="u_id" value="${u_id }"></p>
				<h2 style="color: black; margin-top:15px; margin-bottom:-60px;"><Strong>트레이너 ${trainerprofile.tf_name}님의 프로필</Strong></h2>
				
			</div>
	
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					<h4 style="color:black;"><strong>사진</strong></h4>
					<h7 style="color:black;" class="form-label mt-4"><Strong>코치님 및 레슨 방식을
						잘 보여주는 사진</Strong></h7> 
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white; width:930px; margin-bottom:10px">
						
						<c:forEach var="filelist" items="${filelist}">
							<a  href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}"  data-lightbox="example-set"><img src="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}" width="175" height="175"   alt=""
							 ></a>
						</c:forEach>
						</div>
					
					<div class="row g-3">



						<div class="col-12">
							<h4 style="color:black;"><strong>선생님 소개</strong></h4>
											<div class="input-group has-validation">
								<textarea  style="color:black;"cols="50" rows="10" class="form-control" id="username" name="tf_intro"
						readonly >${trainerprofile.tf_intro }</textarea>
									
							</div>
						</div>

						<div class="col-12">
							
							<h4 style="color:black;"><strong>레슨스케쥴</strong></h4>
					<h7 style="color:black;" class="form-label mt-4"><Strong>코치님의 레슨 가능한 스케줄</Strong></h7> 		
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">

								<div style="display: flex;">
								<p style="text-align: left; "><strong>평일</strong>&nbsp;&nbsp;&nbsp;&nbsp;${trainerprofile.tf_daymorning}~${trainerprofile.tf_dayafter}</p>
									
								</div>
								<div style="display: flex;">
									<p style="text-align: left; "><strong>토요일</strong> ${trainerprofile.tf_saterdaymorning}~${trainerprofile.tf_saterafter}</p>
								</div>
								<div style="display: flex;">
										<p style="text-align: left; "><strong>토요일</strong> ${trainerprofile.tf_sundaymorning}~${trainerprofile.tf_sundayafter}</p>
								</div>
								<div style="display: flex;">
										<p style="text-align: left;"><strong>휴무일</strong> ${trainerprofile.tf_dayoff}</p>
					
								</div>
						<p><Strong>스케줄 참고 사항</Strong>  ${trainerprofile.tf_lessonintro }</p> 		
								
								
							</div>

							<br>
							<h4 style="color:black;"><strong>검증된자격사항</strong></h4>
							<div id="sectionbox" class="form-control" 
								style="padding: 10px; background-color: white;">


								<div style="display: flex;">
									

									<div class="col-md-10">
										<c:forEach var="filelist" items="${filelist_2}">
											<a  href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}"  data-lightbox="example-set2"><input type="text" class="form-control" style="flex: 0.5; " name="tf_certificatetitle"
												id="address2" placeholder="내용을 입력해주세요" value="${filelist.tf_certificatetitle }"readonly></a>
									</div>
									</div>
								


								</c:forEach>
								</div>
							<br>
							<h4 style="color:black;"><strong>프로그램</strong></h4>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


								<div style="display: flex;"></div>
								<div>
				 					<h5 style="text-align: left; color:black;"><strong>${trainerprofile.tf_programtitle }</strong> </h5>
								</div>
								

					<p style="text-align: left; "><strong>프로그램 전문 분야</strong> ${trainerprofile.tf_programsub }</p>
	
								
					
								

								
						<p style="text-align: left; margin-top:10px; margin-bottom:0.5px"><strong>내용</strong></p>

									<div class="input-group has-validation"> 
										<textarea style="color:black;" cols="50" rows="10" class="form-control" name="tf_programintro" readonly
											id="myTextarea" 
											oninput="maxLengthCheck(this)" maxlength="10">${trainerprofile.tf_programintro }</textarea>
									</div>
								
								
								<p style="text-align:left; margin-top:10px;"><strong>참고 사진</strong></p>
									<div>
									<c:forEach var="filelist" items="${filelist_3}">
							<a  href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}"  data-lightbox="example-set3"><img src="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}" width="160" height="160"   alt=""
							 ></a>
							
						</c:forEach>
						</div>
							</div>
	</div>
								</div>
						
						<h4 style="color:black; margin-top:20px;"><strong>레슨 이용 가격</strong></h4>

							<div id="sectionbox" class="form-control"
								style="padding: 10px; margin-top:10px; background-color: white; width:500px;">
					<p style="text-align: left; margin-top:10px; margin-bottom:0.5px"><strong>&nbsp;&nbsp;· ${trainerprofile.tf_lessontitle }</strong></p>
								<hr style="margin: 12px;">
								<p style=" margin-left:30px; margin-top:20px;">${trainerprofile.tf_lessonnumber }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:330px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong>${trainerprofile.tf_lessonprice }원</Strong></p>
								<p style=" margin-left:330px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber*trainerprofile.tf_lessonprice }원</p>
								<hr style="margin: 12px;">
								<p style=" margin-left:30px; margin-top:20px;">${trainerprofile.tf_lessonnumber2 }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:330px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong>${trainerprofile.tf_lessonprice2 }원</Strong></p>
								<p style=" margin-left:330px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber2*trainerprofile.tf_lessonprice2 }원</p>
								<hr style="margin: 12px;">
								<p style=" margin-left:30px; margin-top:20px;">${trainerprofile.tf_lessonnumber3 }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:330px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong>${trainerprofile.tf_lessonprice3 }원</Strong></p>
								<p style=" margin-left:330px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber3*trainerprofile.tf_lessonprice3 }원</p>
								<hr style="margin: 12px;">
								<p style=" margin-left:30px; margin-top:20px;">${trainerprofile.tf_lessonnumber4 }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:330px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong>${trainerprofile.tf_lessonprice4 }원</Strong></p>
								<p style=" margin-left:330px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber4*trainerprofile.tf_lessonprice4 }원</p>
								<hr style="margin: 12px;">
								
									<P>ㆍ 레슨 1회에 ${ trainerprofile.tf_lessontime} 진행됩니다.</P> 
									<P style="margin-top:-20px;">ㆍ ${ trainerprofile.tf_lessonoption}</P>
									<P style="margin-top:-20px;">ㆍ 가격참고사항:${ trainerprofile.tf_lessonintro}</P>  
								</div>
							</div>





								</div>
							</div>

							<hr class="my-4">
							
							
							
							
	
	
	
	<sec:authentication property="principal" var="principal"/>  
	<c:if test="${(principal.u_trainercheck=='0')}">
		<sec:authorize access="hasRole('ROLE_USER')">
		<c:if test="${fn:contains(trainerprofile.tf_consulting, principal.u_key)}">
			<button type="button" class="btn btn-success" disabled >
	  			상담신청완료
			</button>
			<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#cancelconsultingModal">
	  			상담신청취소
			</button>
		</c:if>
		
		<c:if test="${!(fn:contains(trainerprofile.tf_consulting, principal.u_key))}">
			<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#consultingModal">
	  			상담신청
			</button>
			
		</c:if>
	</sec:authorize>
	</c:if>					
	<sec:authorize access="hasRole('ROLE_ADMIN')">
	<c:if test="${(trainerprofile.tf_check=='완료')}">
		<button type="button" class="btn btn-success" disabled>
  			검토완료
		</button>
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#cancelModal">
  			검토취소
		</button>
	</c:if>
	
	<c:if test="${(trainerprofile.tf_check=='대기')}">
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#exampleModal">
  			검토완료
		</button>
		
	</c:if>
</sec:authorize>

<!-- 검토완료 Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        정말 검토완료 하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickConfirm(centerInfo)">확인</button>
      </div>
    </div>
  </div>
</div>	
<!-- 상담신청 Modal -->
<div class="modal fade" id="consultingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        정말 상담을 신청하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickConfirmconsulting(memberInfo)">확인</button>
      </div>
    </div>
  </div>
</div>	
<!-- 검토취소 Modal -->
<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        정말 검토를 취소하시겠습니까? 확인을 누르면 검토대기상태로 변경됩니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickConfirmCancel(centerInfo)">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 상담요청취소 Modal -->
<div class="modal fade" id="cancelconsultingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        정말 상담신청을 취소하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickConfirmCancelconsulting(memberInfo)">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 검토완료하기 누르면 넘어갈 데이타 -->
<form name="centerInfo">
	<input type="hidden" name="u_key" value="${trainerprofile.u_key}">
</form>

<!-- 상담완료하기 누르면 넘어갈 데이타 -->

<form name="memberInfo">
<sec:authentication property="principal" var="principal"/>
	<input type="hidden" name="member_u_key" value="${principal.u_key}">
	<input type="hidden" name="trainer_u_key" value="${trainerprofile.u_key}">
	<input type="hidden" name="tf_id" value="${trainerprofile.tf_id}">
</form>						
						</div>
						
						
					</div>
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

<!-- 검토완료하기 누르면 발생 -->
<script>
	function clickConfirm(formName) {
		formName.action = "/trainerprofilecheck";
		formName.method = "post";
		formName.submit();
	}
</script>
<!-- 상담신청 완료하기 누르면 발생 -->
<script>
	function clickConfirmconsulting(formName) {
		formName.action = "/profileconsultingcheck";
		formName.method = "post";
		formName.submit();
	}
</script>


<!-- 검토취소하기 누르면 발생 -->
<script>
	function clickConfirmCancel(formName) {
		formName.action = "/trainerprofilecheckcancel";
		formName.method = "post";
		formName.submit();
	}
	
<!-- 상담요청 취소하기 누르면 발생 -->
function clickConfirmCancelconsulting(formName) {
		formName.action = "/profileconsultingcancel";
		formName.method = "post";
		formName.submit();
	}
</script>


	<script>
   
</script>

	<script>
     
      
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
