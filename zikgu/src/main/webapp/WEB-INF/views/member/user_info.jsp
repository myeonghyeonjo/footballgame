<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
#rounded-rectangle1, #rounded-rectangle2 {
  border-radius: 20px; /* 모서리 둥글기 값 지정 */
  width: 470px; /* 너비 지정 */
  height: 210px; /* 높이 지정 */
  background-color: #f0f0f0; /* 배경색 지정 */
    width: 47%;
  
}
.aa { text-decoration:none }

.aa:hover{ text-decoration: underline }

.wrapper {
 display: flex;
  justify-content: space-between;;
}




</style>
<body>
  <jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>	
       <sec:authentication property="principal" var="principal"/>
     
       <body class="bg-light">
		<div style="background-color: light;">
	<div class="container"  >
		
         <h5 style="color:black; margin-top:10px;" ><Strong>계정</Strong></h5> 
       
     

	<hr>
	<c:if test="${(principal.u_trainercheck=='1')}">
	<h2 style="color:black; margin-top:50px; margin-bottom:20px;"><Strong>${principal.uName } 트레이너님, 안녕하세요.</Strong></h2>
	</c:if>
	<c:if test="${(principal.u_trainercheck=='0')}">
	<h2 style="color:black; margin-top:50px; margin-bottom:20px;"><Strong>${principal.uName } 회원님, 안녕하세요.</Strong></h2>
	</c:if>
	</div>
	</div>
	<div style="background-color: white;">
		<div class="container">
	
	
        <div>
           <sec:authorize access="isAuthenticated()">
           
           <a href="/centerlist">센터 리스트</a>
        
         
            
         </sec:authorize>
        </div>
        
        
        
        
<c:if test="${(principal.u_trainercheck=='1')}">
		<div class="container"  >
			<div class="wrapper">
				<div id="rounded-rectangle1" class="bg-light" >
	 				<h3 style="color:black; padding:30px;"><Strong>트레이너 프로필</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">프로필을 등록하고, 조회하거나 수정하세요.</p>
	 			    <a href="/trainerProfile?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 등록 ></a>
	 			    <a href="/trainerDetail?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 조회 ></a>
	 			 </div>
	 			   
	 			 <div id="rounded-rectangle2" class="bg-light" >
	 				<h3 style="color:black; padding:30px;"><Strong>센터 등록</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">근무중인 센터가 없으신가요? 센터 등록을 요청하세요</p>
	 			    <a href="/centerinsert?u_key=${u_key}" class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-20px; margin-right:50px">센터 등록 요청 ></a>  
	 			    <a href="/centerconfirmlist?u_key=${u_key}" class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-20px; margin-right:50px">요청 조회 ></a>  
				</div>
			</div>
		</div>
</c:if>        
        
        
        
        
        
        
        
        
<c:if test="${(principal.u_trainercheck=='0')}">
	<div class="container"  >
			<div class="wrapper">
				<div id="rounded-rectangle1" class="bg-light" >
	 				<h3 style="color:black; padding:30px;"><Strong>회원 프로필</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">프로필을 등록하고, 조회하거나 수정하세요.</p>
	 			    <a href="/memberProfile?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 등록 ></a>
	 			    <a href="/trainerDetail?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 조회 ></a>
	 			 </div>
	 			   
	 			 
			</div>
		</div>






		<main>
		

		</main>
		</c:if>

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
    	
</script>
</body>        
</body>
</html>
