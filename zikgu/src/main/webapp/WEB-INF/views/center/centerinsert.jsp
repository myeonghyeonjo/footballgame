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


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
</style>


<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>
<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
<body class="bg-light">

	<div class="container">
		<main>




			<div class="py-5 text-center">
				<h2 style="text-align: left; color: black;"><strong>센터 정보 등록</strong></h2>
			</div>
<form  action="/centerinsertprocess" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					<label for="email" style="font-size: 20px; padding: 10px;" form-labelmt-4" ><strong>센터사진</strong></label><br>
					<div id="sectionbox" class="form-control">
					<label for="formFile2" style="padding:1px;" class="form-label mt-4">센터의 사진을 올려주세요.</label> 
						
      <input class="form-control" type="file" name="uploadfile"  accept="image/*" onchange="setThumbnail(event);" id="formFile" multiple/>
  		<div class="image-container" id="image_container"></div>
					</div>
			
			<label for="email" style="font-size: 20px; padding: 10px;" form-labelmt-4" ><strong>센터정보</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;">
								<div style="display: flex;"></div>
								<input type="hidden" name="u_key" value="${u_key}">
								<div>
									<label for="username2" class="form-label" 
										style="font-size: 15px;">센터이름</label> <input
										type="text" id="username2" style="flex: 1; height: 40px;" name="c_name"
										class="form-control" placeholder="센터이름을입력해주세요">
								</div>
								
								<label for="username2" class="form-label" 
										style="font-size: 15px;">이용정보</label> <input
										type="text" id="username2" style="flex: 1; height: 40px;" name="c_inform"
										class="form-control" placeholder="이용정보를입력해주세요">
								</div>
							<br>
							
							
							
						<div class="col-12">
							<label for="email" style="font-size: 20px;" form-labelmt-4" ><strong>센터 소개</label>
							<div class="input-group has-validation">
								<textarea cols="50" rows="10" class="form-control" id="c_intro" name="c_intro"
									placeholder="소개글을 입력해주세요"></textarea>
							</div>
						</div>
							
							
							<label for="email" style="font-size: 20px; padding: 10px;"
								form-labelmt-4" ><strong>운영 시간</label>
							<div id="sectionbox" class="form-control"
								style="padding: 10px; background-color: white;"">
								
								
							
									
									<div style="display: flex;">
										<p style="padding:12px;">평일&nbsp;&nbsp;&nbsp;</p>
										<input type="text" id="timeInput" name="c_daymorning"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4">

										<p style="padding:12px;">~</p>
										<input type="text" id="timeInput" name="c_dayafter"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4">

									</div>
									<div style="display: flex;">
										<p style="padding:12px;">토요일</p>
										<input type="text" id="timeInput" name="c_satermorning"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4">
											<p style="padding:12px;">~</p>
										<input type="text" id="timeInput" name="c_saterafter"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4">
									</div>
									<div style="display: flex;">
										<p style="padding:12px;">일요일</p>
										<input type="text" id="timeInput" name="c_sunmorning"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4">
											<p style="padding:12px;">~</p>
										<input type="text" id="timeInput" name="c_sunafter"
											style="margin: 10px; width: 160px; flex: 0.2; height: 40px;"
											class="form-control" oninput="formatTime(this)" maxlength="4">
									</div>
									<div style="display: flex;">
										<p style="padding:12px;">휴무일</p>
										<input type="text" id="rcvordAm" name="c_dayoff"
											style="margin: 10px; width: 160px; flex: 0.3; height: 40px;"
											class="form-control" placeholder="휴무일입력">
									</div>
							
								
									</div>
							<label for="email" style="font-size: 20px; padding: 10px;"
								form-labelmt-4" ><strong>센터 주소</label>
								<div id="sectionbox" class="form-control" 
								style="padding: 10px; background-color: white;">
									<div style="display: flex;">
										<input type="text" style= "flex: 0.5; margin:2px;" class="form-control"  name="c_postcode" id="sample4_postcode" placeholder="우편번호">
										<input type="button"  style= "flex: 0.5; margin:2px;" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"  class="form-control" ><br>
									</div>
										<input type="text" class="form-control" style="margin: 2px;" id="sample4_roadAddress" name="c_loadaddress" placeholder="도로명주소">
										<input type="text" class="form-control"  style="margin: 2px;"  id="sample4_jibunAddress" name="c_oldaddress" placeholder="지번주소">
										<span id="guide" style="color:#999;display:none"></span>
										<input type="text"  class="form-control"  style="margin: 2px;"  id="sample4_detailAddress" name="c_detailaddress" placeholder="상세주소">
										<input type="text" class="form-control"  style="margin: 2px;"  id="sample4_extraAddress" name="c_option" placeholder="참고항목">
								</div>
							</div>
							</div>
<button class="w-100 btn btn-primary btn-lg" type="submit">등록하기</button>

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

      
</script>

</body>
</html>