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
				<h2 style="color:black; text-align:left;"><strong>회원 정보 등록</strong></h2>
			</div>
<form  action="/memberProfileinsert" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	
   
	<p><input type="hidden" name="u_key" value="${u_key }"></p>
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					
					<label for="email" style="font-size: 20px; padding:5px; form-labelmt-4" ><strong>회원명</label>
							<div id="sectionbox" class="form-control"
								style="padding: px; background-color: #f8f9fa; border:none;">


								<div style="display: flex;">
								

									<div class="col-md-10">
										<input type="text" class="form-control" style="flex: 0.5; margin-left:-10px;" name="m_name"
											id="username" placeholder="회원명을 입력해주세요"  maxlength="10">
									</div>
								</div>
								<span class="point successNameChk">이름은 2자 이상 10자 이하로 설정해주시기 바랍니다.</span>
    							<input type="hidden" id="nameDoubleChk"/>
							</div>
					
				
				
				
				
					
					
					
					
				



							<br>
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>프로그램</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">


							
							
								<div>

									<label for="username2" class="form-label"
										style="font-size: 15px;">관심있는 프로그램을 선택해주세요</label>
										<span class="point successprogramChk">(최소 1개이상 선택해주세요.)</span>
    							<input type="hidden" id="successprogramChk"/>
										<br>
									<div style="display: flex;">
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined" autocomplete="off" value="벌크업">
										<label class="btn btn-outline-dark" for="btn-check-outlined">벌크업</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined2" autocomplete="off" value="식단관리">
										<label class="btn btn-outline-dark" for="btn-check-outlined2">식단관리</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined3" autocomplete="off" value="기능개선">
										<label class="btn btn-outline-dark" for="btn-check-outlined3">기능개선</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined4" autocomplete="off" value="바른체형">
										<label class="btn btn-outline-dark" for="btn-check-outlined4">바른체형</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined5" autocomplete="off" value="다이어트">
										<label class="btn btn-outline-dark" for="btn-check-outlined5">다이어트</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined6" autocomplete="off" value="하체라인">
										<label class="btn btn-outline-dark" for="btn-check-outlined6">하체라인</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined7" autocomplete="off" value="기초체력">
										<label class="btn btn-outline-dark" for="btn-check-outlined7">기초체력</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined8" autocomplete="off" value="근력향상">
										<label class="btn btn-outline-dark" for="btn-check-outlined8">근력향상</label><br>
									</div>
									<div style="display: flex;">
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined9" autocomplete="off" value="대회준비">
										<label class="btn btn-outline-dark" for="btn-check-outlined9">대회준비</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub	"
											class="btn-check" id="btn-check-outlined10" value="산전산후케어"
											autocomplete="off"> <label
											class="btn btn-outline-dark" for="btn-check-outlined10">산전산후케어</label><br>
										<input type="checkbox" style="flex: 0.3;" name="m_programsub"
											class="btn-check" id="btn-check-outlined11" value="바디프로필"
											autocomplete="off"> <label
											class="btn btn-outline-dark" for="btn-check-outlined11">바디프로필</label><br>
									</div>
									
									<label for="username2" class="form-label"
										style="font-size: 15px;">성별을 선택해주세요</label><br>
										<div style="display: flex;">
										    <input type="checkbox" style="flex: 0.3;" name="m_gender" class="btn-check" id="btn-check-outlined12" autocomplete="off" value="남성" onchange="handleCheckboxChange(this)" checked>
										    <label class="btn btn-outline-dark" for="btn-check-outlined12">남성</label><br>
										    <input type="checkbox" style="flex: 0.3; " name="m_gender" class="btn-check" id="btn-check-outlined13" value="여성" autocomplete="off" onchange="handleCheckboxChange(this)">
										    <label class="btn btn-outline-dark" for="btn-check-outlined13">여성</label><br>
										</div>
									
									<label for="username2" class="form-label"
										style="font-size: 15px;">선호하시는 트레이너분의 성별을 선택해주세요</label><br>
										<div style="display: flex;">
									    <input type="checkbox" style="flex: 0.3;" name="m_likegender" class="btn-check" id="btn-check-outlined14" autocomplete="off" value="남성" onchange="handleCheckboxChange2(this)" checked>
									    <label class="btn btn-outline-dark" for="btn-check-outlined14">남성</label><br>
									    <input type="checkbox" style="flex: 0.3;" name="m_likegender" class="btn-check" id="btn-check-outlined15" value="여성" autocomplete="off" onchange="handleCheckboxChange2(this)">
									    <label class="btn btn-outline-dark" for="btn-check-outlined15">여성</label><br>
									    <input type="checkbox" style="flex: 0.3;" name="m_likegender" class="btn-check" id="btn-check-outlined16" value="상관없음" autocomplete="off" onchange="handleCheckboxChange2(this)">
									    <label class="btn btn-outline-dark" for="btn-check-outlined16">상관없음</label><br>
									</div>
										
								</div>
							
								
								</div>
								
							


							
							
								
							
									
										</select>
										<label  for="myTextarea" class="form-label"
										style="font-size: 20px; margin-top:20px;">상담요청 인사말 설정 (연락 시 참고사항)</label>
										<span class="point successIntroChk">이름은 2자 이상 10자 이하로 설정해주시기 바랍니다.</span>
    							<input type="hidden" id="introDoubleChk"/>
									<div class="input-group has-validation">
										<div class="col-md-10">			
											<textarea cols="50" rows="10" class="form-control" id="m_intro" name="m_intro"
											placeholder="상담요청 인사말을 입력해주세요" maxlength="100" style="height:100px;"></textarea>
									</div>
									</div>
								

							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
								<label for="email" style="font-size: 20px; margin-top:20px;" form-labelmt-4" ><strong>레슨스케쥴
									(회원님의 레슨 가능한 스케줄을 알려주세요.)</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;">

								<div style="display: flex;">
									<input type="hidden" id="scales" name="m_day" value="1">&nbsp;
									<p style="text-align: left; padding-top: 10px;" >평일</p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<input type="text"   name="m_daymorning"
										id="timeInput" style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control numberOnly" oninput="formatTime(this)" maxlength="4" placeholder="00:00" >~
									<input type="text" id="timeInput" name="m_dayafter"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control numberOnly" oninput="formatTime(this)" maxlength="4"placeholder="00:00">
												<span class="point successmorningChk"></span>
    							<input type="hidden" id="morningDoubleChk"/>
    							<input type="hidden" id="afterDoubleChk"/>
								</div>
								<div style="display: flex;">
									<input type="hidden" id="scales" name="m_saterday" value="1">&nbsp;
									<p style="text-align: left; padding-top: 10px;">토요일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" id="timeInput" name="m_saterdaymorning"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control numberOnly" oninput="formatTime(this)" maxlength="4" placeholder="00:00">~
									<input type="text" id="timeInput" name="m_saterafter"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control numberOnly" oninput="formatTime(this)" maxlength="4" placeholder="00:00">
										<span class="point successsaterdaymorningChk"></span>
    							<input type="hidden" id="saterdaymorningDoubleChk"/>
    							<input type="hidden" id="saterafterDoubleChk"/>
								</div>
								<div style="display: flex;">
									<input type="hidden" id="scales" name="m_sunday" value="1">&nbsp;
									<p style="text-align: left; padding-top: 10px;">일요일</p>
									&nbsp;&nbsp;&nbsp; <input type="text" id="timeInput" name="m_sundaymorning"
										style="width: 140px; flex: 0.2; height: 40px;"
										class="form-control numberOnly" oninput="formatTime(this)" maxlength="4" placeholder="00:00">~
									<input type="text" id="timeInput"
										style="width: 140px; flex: 0.2; height: 40px;" name="m_sundayafter"
										class="form-control numberOnly" oninput="formatTime(this)" maxlength="4" placeholder="00:00">
									<span class="point successsundaymorningChk"></span>
	    							<input type="hidden" id="sundaymorningDoubleChk"/>
	    							<input type="hidden" id="sundayafterDoubleChk"/>
								</div>
							
								<label for="username" class="form-label"
									style="font-size: 15px;">스케줄 참고 사항을 알려주세요 (40자 이내)</label> 
									<input
									type="text" style="flex: 1; height: 40px;" class="form-control" name="m_schedureintro"
									placeholder="스케줄 참고 사항을 입력해주세요." maxlength="20">
									<span class="point successschedureintroChk"></span>
	    							<input type="hidden" id="schedureintroDoubleChk"/>
							</div>
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							

								
							<label for="email" style="font-size: 20px; margin-top:10px; padding:10px; form-labelmt-4" ><strong>거주지</label>
								<span class="point successpostcodeChk"></span>
	    							<input type="hidden" id="postcodeDoubleChk"/>
							<div id="sectionbox" class="form-control" 
								style="padding: 10px; background-color: white;">
									<div style="display: flex;">
										<input type="text" style= "flex: 0.5; margin:2px;" class="form-control"  name="m_postcode" id="sample4_postcode" placeholder="우편번호" readonly>
										<input type="button"  style= "flex: 0.5; margin:2px;" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"  class="form-control" ><br>
									</div>
										<input type="text" class="form-control" style="margin: 2px;" id="sample4_roadAddress" name="m_loadaddress" placeholder="도로명주소" readonly>
										<input type="text" class="form-control"  style="margin: 2px;"  id="sample4_jibunAddress" name="m_oldaddress" placeholder="지번주소" readonly>
										<span id="guide" style="color:#999;display:none"></span>
										<input type="text"  class="form-control"  style="margin: 2px;"  id="sample4_detailAddress" name="m_detailaddress" placeholder="상세주소" >
										<input type="text" class="form-control"  style="margin: 2px;"  id="sample4_extraAddress" name="m_optionaddress" placeholder="참고항목" readonly>
								</div>

							<hr class="my-4">

							<button style="width:150px;" id="button1" class="btn btn-outline-dark" type="submit">등록하기</button>
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
    //체크박스 성별중복선택 불가

    function handleCheckboxChange(checkbox) {
        var checkboxes = document.getElementsByName("m_gender");
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = false;
          }
          checkbox.checked = true;
    }
    
    //체크박스 성별선호도 중복선택불가
    
    function handleCheckboxChange2(checkbox) {
        var checkboxes = document.getElementsByName("m_likegender");
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = false;
          }
          checkbox.checked = true;
    }
  //input 숫자만 입력
    $(".numberOnly").on("keyup", function(event) {
    	var arr = $(this).val();
    	console.log("arr길이:"+arr.length);
        if (event.which && (event.which  > 47 && event.which  < 58 || event.which == 8)) { 	
      
        	console.log(" $(this).val:"+$(this).val());
        	
    
        }  else {
        	
            alert('숫자만 입력해주세요.');
            $(this).val($(this).val().replace(/[^0-9]/g,""));
        	
        }
        
        // 입력값에서 숫자만 추출
  	  
  	  
    });
    $("#username").blur(function(){
    	var sm_name = $("#username").val();
    	if(sm_name == "" || sm_name.length < 2){
    		$(".successNameChk").text("이름은 2자 이상 10자 이하로 설정해주세요 :)");
    		$(".successNameChk").css("color", "red");
    		$("#nameDoubleChk").val("false");
    	}else{
    		$(".successNameChk").text("사용가능한 이름입니다.");
    		$(".successNameChk").css("color", "green");
    		$("#nameDoubleChk").val("true");
    	}
    });
    
    $("#m_intro").blur(function(){
    	var sm_name = $("#m_intro").val();
    	if(sm_name == "" || sm_name.length < 1){
    		$(".successIntroChk").text("상담요청 인사말을 입력해주세요. :)");
    		$(".successIntroChk").css("color", "red");
    		$("#introDoubleChk").val("false");
    	}else{
    		$(".successIntroChk").text("");
    		$(".successIntroChk").css("color", "green");
    		$("#introDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_daymorning"]').blur(function(){
    	var sm_name =  $('input[name="m_daymorning"]').val();
    	if(sm_name == "" || sm_name.length < 5){
    		$(".successmorningChk").text("정확한 시간을 입력해주세요. ex)13:30 :)");
    		$(".successmorningChk").css("color", "red");
    		$("#morningDoubleChk").val("false");
    	}else{
    		$(".successmorningChk").text("");
    		$(".successmorningChk").css("color", "green");
    		$("#morningDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_dayafter"]').blur(function(){
    	var sm_name =  $('input[name="m_dayafter"]').val();
    	if(sm_name == "" || sm_name.length < 5){
    		$(".successmorningChk").text("정확한 시간을 입력해주세요. ex)13:30 :)");
    		$(".successmorningChk").css("color", "red");
    		$("#afterDoubleChk").val("false");
    	}else{
    		$(".successmorningChk").text("");
    		$(".successmorningChk").css("color", "green");
    		$("#afterDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_saterdaymorning"]').blur(function(){
    	var sm_name =  $('input[name="m_saterdaymorning"]').val();
    	if(sm_name == "" || sm_name.length < 5){
    		$(".successsaterdaymorningChk").text("정확한 시간을 입력해주세요. ex)13:30 :)");
    		$(".successsaterdaymorningChk").css("color", "red");
    		$("#saterdaymorningDoubleChk").val("false");
    	}else{
    		$(".successsaterdaymorningChk").text("");
    		$(".successsaterdaymorningChk").css("color", "green");
    		$("#saterdaymorningDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_saterafter"]').blur(function(){
    	var sm_name =  $('input[name="m_saterafter"]').val();
    	if(sm_name == "" || sm_name.length < 5){
    		$(".successsaterdaymorningChk").text("정확한 시간을 입력해주세요. ex)13:30 :)");
    		$(".successsaterdaymorningChk").css("color", "red");
    		$("#saterafterDoubleChk").val("false");
    	}else{
    		$(".successsaterdaymorningChk").text("");
    		$(".successsaterdaymorningChk").css("color", "green");
    		$("#saterafterDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_sundaymorning"]').blur(function(){
    	var sm_name =  $('input[name="m_sundaymorning"]').val();
    	if(sm_name == "" || sm_name.length < 5){
    		$(".successsundaymorningChk").text("정확한 시간을 입력해주세요. ex)13:30 :)");
    		$(".successsundaymorningChk").css("color", "red");
    		$("#sundaymorningDoubleChk").val("false");
    	}else{
    		$(".successsundaymorningChk").text("");
    		$(".successsundaymorningChk").css("color", "green");
    		$("#sundaymorningDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_sundayafter"]').blur(function(){
    	var sm_name =  $('input[name="m_sundayafter"]').val();
    	if(sm_name == "" || sm_name.length < 5){
    		$(".successsundaymorningChk").text("정확한 시간을 입력해주세요. ex)13:30 :)");
    		$(".successsundaymorningChk").css("color", "red");
    		$("#sundayafterDoubleChk").val("false");
    	}else{
    		$(".successsundaymorningChk").text("");
    		$(".successsundaymorningChk").css("color", "green");
    		$("#sundayafterDoubleChk").val("true");
    	}
    });
    
    $('input[name="m_schedureintro"]').blur(function(){
    	var sm_name =  $('input[name="m_schedureintro"]').val();
    	if(sm_name == "" || sm_name.length < 1){
    		$(".successschedureintroChk").text("스케줄 참고사항을 입력해주세요. :)");
    		$(".successschedureintroChk").css("color", "red");
    		$("#schedureintroDoubleChk").val("false");
    	}else{
    		$(".successschedureintroChk").text("");
    		$(".successschedureintroChk").css("color", "green");
    		$("#schedureintroDoubleChk").val("true");
    	}
    });
 
    $('input[name="m_postcode"]').blur(function(){
    	var sm_name =  $('input[name="m_postcode"]').val();
    	if(sm_name == "" || sm_name.length < 1){
    		$(".successpostcodeChk").text("주소를 입력해주세요. :)");
    		$(".successpostcodeChk").css("color", "red");
    		$("#postcodeDoubleChk").val("false");
    	}else{
    		$(".successpostcodeChk").text("");
    		$(".successpostcodeChk").css("color", "green");
    		$("#postcodeDoubleChk").val("true");
    	}
    });
    
    
    $("#button1").click(function(){
    	var checkboxes = document.querySelectorAll('input[name="m_programsub"]');
    	var isChecked = false;

    	for (var i = 0; i < checkboxes.length; i++) {
    	  if (checkboxes[i].checked) {
    	    isChecked = "true";
    	    break;
    	  }
    	}
    	if(isChecked=="true"){
	    	$(".successprogramChk").text("(최소 1개이상의 프로그램을 선택해주세요.) :)");
			$(".successprogramChk").css("color", "black");
    	}
	    if($("#nameDoubleChk").val() == "true" && isChecked == "true"
	    		
	    		){
	    	// 체크된 값을 저장할 변수를 선언합니다.
	    	var checkedValues = [];

	    	// 모든 체크박스 요소를 선택합니다.
	    	var checkboxes = document.querySelectorAll('input[name="m_programsub"]:checked');

	    	// 선택된 체크박스를 반복하여 값을 가져옵니다.
	    	for (var i = 0; i < checkboxes.length; i++) {
	    	  checkedValues.push(checkboxes[i].value);
	    	}
	     
	        var m_name = $("#username").val();
	        var m_gender = $('input[name="m_gender"]').val();
	        var m_likegender = $('input[name="m_likegender"]').val();
	        var m_daymorning = $('input[name="m_daymorning"]').val();
	        var m_dayafter = $('input[name="m_dayafter"]').val();
	        var m_saterday = $('input[name="m_saterday"]').val();
	        var m_saterafter = $('input[name="m_saterafter"]').val();
	        var m_sundaymorning = $('input[name="m_sunday"]').val();
	        var m_sundayafter = $('input[name="m_sundayafter"]').val();
	        var m_schedureintro = $('input[name="m_schedureintro"]').val();
	        var m_programsub=checkedValues;
	        var m_postcode = $("#sample4_postcode").val();
	        var m_loadaddress = $("#sample4_roadAddress").val();
	        var m_oldaddress = $("#sample4_jibunAddress").val();
	        var m_detailaddress = $("#sample4_detailAddress").val();
	        var m_optionaddress = $("#sample4_extraAddress").val();
	        var m_intro =  $("#m_intro").val();
	        
	        sessionStorage.setItem('postmemberprofile', 'true');
	        //$('#text-output').text("You typed: " + input);
	        $.ajax({
	        	
	    		method: "POST",
	    		url: "/memberProfileinsert",
	    		data: {m_programsub:m_programsub,m_intro:m_intro, m_name : m_name ,m_program:m_program, m_gender:m_gender, m_likegender:m_likegender, m_daymorning:m_daymorning,m_dayafter:m_dayafter
	    			,m_saterday:m_saterday,m_saterafter:m_saterafter,m_sundaymorning:m_sundaymorning,m_sundayafter:m_sundayafter,m_schedureintro:m_schedureintro
	    			,m_postcode:m_postcode,m_loadaddress:m_loadaddress,m_oldaddress:m_oldaddress,m_detailaddress:m_detailaddress,m_optionaddress:m_optionaddress}
	    	})
	    	.done(function( html ) {
	    		console.log(html);
	    		
	    	});
   
	    }else{	alert("회원가입을 완료할 수 없습니다. 다시한번 확인해주십시오.");
	    	
		    if(isChecked!="true"){
		    	$(".successprogramChk").text("(최소 1개이상의 프로그램을 선택해주세요.) :)");
				$(".successprogramChk").css("color", "red");
	    	}
	    	
	    	if($("#nameDoubleChk").val() != "true"){
	    		$(".successNameChk").text("이름를 입력해주세요 :)");
				$(".successNameChk").css("color", "red");
	    	}
	    	if($("#introDoubleChk").val() != "true"){
	    		$(".successIntroChk").text("상담요청 인사말을 입력해주세요. :)");
				$(".successIntroChk").css("color", "red");
	    	}
	    	if($("#morningDoubleChk").val() != "true"){
	    		$(".successmorningChk").text("정확한 시간을 입력해주세요 ex)13:30 :)");
				$(".successmorningChk").css("color", "red");
	    	}
	    	if($("#afterDoubleChk").val() != "true"){
	    		$(".successmorningChk").text("정확한 시간을 입력해주세요 ex)13:30 :)");
				$(".successmorningChk").css("color", "red");	
	    	}
	    	if($("#saterdaymorningDoubleChk").val() != "true"){
	    		$(".successsaterdaymorningChk").text("정확한 시간을 입력해주세요 ex)13:30 :)");
				$(".successsaterdaymorningChk").css("color", "red");	
	    	}
	    	if($("#saterafterDoubleChk").val() != "true"){
	    		$(".successsaterdaymorningChk").text("정확한 시간을 입력해주세요 ex)13:30 :)");
				$(".successsaterdaymorningChk").css("color", "red");	
	    	}
	    	if($("#sundaymorningDoubleChk").val() != "true"){
	    		$(".successsundaymorningChk").text("정확한 시간을 입력해주세요 ex)13:30 :)");
				$(".successsundaymorningChk").css("color", "red");	
	    	}
	    	if($("#sundayafterDoubleChk").val() != "true"){
	    		$(".successsundaymorningChk").text("정확한 시간을 입력해주세요 ex)13:30 :)");
				$(".successsundaymorningChk").css("color", "red");	
	    	}
	    	if($("#schedureintroDoubleChk").val() != "true"){
	    		$(".successschedureintroChk").text("스케줄 참고사항을 입력해주세요. :)");
				$(".successschedureintroChk").css("color", "red");	
	    	}
	    	if($("#postcodeDoubleChk").val() != "true"){
	    		$(".successpostcodeChk").text("주소를 입력해주세요. :)");
				$(".successpostcodeChk").css("color", "red");	
	    	}
	    	return false
	    }    	    	
    });
 

</script>
</body>
</html>
