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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>
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
  button {
  background-color: transparent;
  border: none;
  color: #4169e1;
  cursor: pointer;
  padding: 0;
  font-size: inherit;
  text-decoration: none; /* 밑줄 제거 */
}

button:hover {
  text-decoration: underline; /* 마우스 올리면 밑줄 추가 */
}



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
			 <sec:authorize access="hasRole('ROLE_ADMIN')">
				<h2 style="color:black; margin-top:50px; margin-bottom:20px;"><Strong>관리자님, 안녕하세요.</Strong></h2>
			 </sec:authorize>
			 	 <sec:authorize access="isAnonymous()">
	<h2 style="color:black; margin-top:50px; margin-bottom:20px;"><Strong>${principal.uName } 회원님, 안녕하세요.</Strong></h2>
	</sec:authorize>
	</c:if>
	</div>
	</div>
	<div style="background-color: white;">
		<div class="container">
	
	
       
        
        
        
        
<c:if test="${(principal.u_trainercheck=='1')}">
		<div class="container"  >
			<div class="wrapper" >
				<div id="rounded-rectangle1" class="bg-light"  style="margin-top:30px;">
	 				<h3 style="color:black; padding:30px;"><Strong>트레이너 프로필 관리</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">프로필을 등록하고, 조회하거나 수정하세요.</p>
	 			    <a href="/trainerProfile?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 등록 ></a>
	 			    <a href="/trainerDetail?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 조회 ></a>
	 			 </div>
	 			   
	 			 <div id="rounded-rectangle2" class="bg-light" style="margin-top:30px;">
	 				<h3 style="color:black; padding:30px;"><Strong>센터 관리</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">근무중인 센터가 없으신가요? 센터 등록을 요청하세요</p>
	 			    <a href="/centerinsert?u_key=${u_key}" class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-20px; margin-right:50px">센터 등록 요청 ></a>  
	 			    <a href="/centerconfirmlist?u_key=${u_key}" class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-20px; margin-right:50px">요청 조회 ></a>  
				</div>
			</div>
			
			<div class="wrapper" >
				<div id="rounded-rectangle1" class="bg-light"  style="margin-top:30px;">
	 				<h3 style="color:black; padding:30px;"><Strong>상담 요청 관리</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">요청 현황을 조회하고, 관리하세요.</p>
	 			    <a href="/trainerconsultinglist?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">상담요청 조회 ></a>
	 			 </div>
	 			   
	 			 <div id="rounded-rectangle2" class="bg-light" style="margin-top:30px;">
	 				<h3 style="color:black; padding:30px;"><Strong>?????</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">근무중인 센터가 없으신가요? 센터 등록을 요청하세요</p>
	 			    <a href="/centerinsert?u_key=${u_key}" class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-20px; margin-right:50px">센터 등록 요청 ></a>  
	 			    <a href="/centerconfirmlist?u_key=${u_key}" class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-20px; margin-right:50px">요청 조회 ></a>  
				</div>
			</div>
			
			
		</div>
</c:if>        
        
        
        
        
        
        
        
        
<c:if test="${(principal.u_trainercheck=='0')}">
 <sec:authorize access="hasRole('ROLE_ADMIN')">
	 <div class="container"  >
				<div class="wrapper">
					<div id="rounded-rectangle1" class="bg-light" style="margin-top:30px;" >
		 				<h3 style="color:black; padding:30px;"><Strong>회원 프로필 관리</Strong></h3>
						<p style="margin-left: 30px; margin-top:-10px; margin-right:50px; margin-bottom:30px;">프로필을 조회하거나 수정하세요.</p>
		 			   
		 			    <a href="/memberprofilelist"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:190px; margin-right:50px">프로필 조회 ></a>
		 			 </div>
		 			 
		 			 <div id="rounded-rectangle1" class="bg-light" style="margin-top:30px;">
		 				<h3 style="color:black; padding:30px;"><Strong>트레이너 프로필 관리</Strong></h3>
						<p style="margin-left: 30px; margin-top:-10px; margin-right:50px; margin-bottom:30px;">프로필을 조회하거나 수정하세요.</p>
		 			   
		 			    <a href="/trainerprofilelist"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:190px; margin-right:50px">프로필 조회 ></a>
		 			 </div>
				</div>
				
				<div class="wrapper" style="margin-top:30px;">
					<div id="rounded-rectangle1" class="bg-light" >
		 				<h3 style="color:black; padding:30px;"><Strong>센터 관리</Strong></h3>
						<p style="margin-left: 30px; margin-top:-10px; margin-right:50px; margin-bottom:30px;">센터를 조회하거나 수정하세요.</p>
		 			   
		 			    <a href="/centerlist"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:190px; margin-right:50px">센터 조회 ></a>
		 			 </div>
		 			 
		 			 <div id="rounded-rectangle1" class="bg-light" >
		 				<h3 style="color:black; padding:30px;"><Strong>???관리</Strong></h3>
						<p style="margin-left: 30px; margin-top:-10px; margin-right:50px; margin-bottom:30px;">프로필을 조회하거나 수정하세요.</p>
		 			   
		 			    <a href="/trainerprofilelist"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:190px; margin-right:50px">프로필 조회 ></a>
		 			 </div>
				</div>
			</div>
			
			
	
 </sec:authorize>
 <c:if test="${(principal.u_trainercheck=='0')}">
 <sec:authorize access="hasRole('ROLE_USER')">
	<div class="container"  >
			<div class="wrapper">
				<div id="rounded-rectangle1" class="bg-light" style="margin-top:30px;">
	 				<h3 style="color:black; padding:30px; "><Strong>회원 프로필</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">프로필을 등록하고, 조회하거나 수정하세요.</p>
	 			    
	 			     <a href="/memberProfile?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 등록 ></a>
	 			    <a href="/memberDetail?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">프로필 조회 ></a>
	 			 </div>
	 			 
	 			 <div id="rounded-rectangle1" class="bg-light" style="margin-top:30px;">
	 				<h3 style="color:black; padding:30px; "><Strong>상담 관리</Strong></h3>
					<p style="margin-left: 30px; margin-top:-10px; margin-right:50px">신청한 상담을 확인하고, 수정하세요.</p>
	 			    
	 			     <a href="/memberconsulting?u_key=${u_key}"  class="aa" style="color:#4169e1; margin-left: 30px; margin-top:-10px; margin-right:50px">상담 조회 ></a>
	 			 </div>
			</div>
		</div>
	</sec:authorize>
	</c:if>
		<main>
		</main>
		</c:if>
		
<div style="background-color: light;">
	<div class="container"  >
		
         <h5 style="color:black; margin-top:50px;" ><Strong>계정설정</Strong></h5> 
       
     

	<hr>
	<p><Strong>ID </Strong>${user.username }</p>  
	
		
		
		
	<p><Strong>비밀번호 </Strong><button data-bs-toggle="modal" data-bs-target="#exampleModal">
  			편집
		</button></p>
		
	<p><Strong>이름 </Strong>${user.uName } <button data-bs-toggle="modal" data-bs-target="#exampleModal2">
  			편집
		</button></p>
	<p><Strong>전화번호 </Strong>${user.phone}</p>
	
	<p><Strong></Strong><button data-bs-toggle="modal" data-bs-target="#exampleModal3">
  			회원탈퇴
		</button></p>  
	</div>
	</div>
	
	
	
	
	
	
<!-- Button trigger modal -->



		
		
	


<!-- 비밀번호 편집 Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black; margin-left:130px; padding:5px"><Strong>비밀번호를 수정하세요.</Strong></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="form-floating">
	   		  <input id="password1" type="password"  class="form-control" name="sm_pw" placeholder="동일하게 입력해주세요." required maxlength="20" autocomplete="off"/>
		 		<label for="floatingInput">현재비밀번호</label>
		 		 <span class="point">※ 비밀번호는 총 16자 까지 입력가능</span>
		 	</div>
		 	<span class="point successOldPwChk"></span>
              	<input type="hidden" id="oldpwDoubleChk"/>
	   		 <div class="form-floating">
              <input id="newpassword1" type="password"  class="form-control" name="sm_pw" placeholder="동일하게 입력해주세요." required maxlength="20" autocomplete="off"/>
		 <label for="floatingInput">변경비밀번호</label>
              </div>
             
                 <div class="form-floating">
             
             <input id="newpassword2" type="password" class="form-control"  name="sm_pw_chk" placeholder="동일하게 입력해주세요." required maxlength="20" autocomplete="off"/>
			<label for="floatingInput">변경비밀번호확인</label>
		<span class="point successPwChk"></span>
		<input type="hidden" id="pwDoubleChk"/>
              </div>
	   		   		 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소</button>
        <button type="button" id="clickConfirm" class="btn btn-outline-primary" onclick="clickConfirm(passwordInfo)">저장</button>
      </div>
    </div>
  </div>
</div>
<!-- 이름편집 Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black; margin-left:135px; padding:5px;"><Strong>이름을 수정하세요.</Strong></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="form-floating">
	   		  <input id="username" type="text"  class="form-control"  placeholder="동일하게 입력해주세요."  value="${user.uName }" required maxlength="20" autocomplete="off"/>
		 		<label for="floatingInput">이름</label>
		 	</div>
		 	
		 	
		 	
		 	
		 	
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickUsernameModify(usernameInfo)">저장</button>
      </div>
    </div>
  </div>
</div>
</div>

<!-- 회원탈퇴 Modal -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black; margin-left:110px; padding:5px"><Strong>회원탈퇴를 하시겠습니까?</Strong></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <p><Strong>회원탈퇴를 하시려면 비밀번호 입력 후 약관에 동의하세요.</Strong></p>
	   		 <div class="form-floating">
              <input id="Withdrawalpassword1" type="password"  class="form-control" name="sm_pw" placeholder="동일하게 입력해주세요." required maxlength="20" autocomplete="off"/>
		 <label for="floatingInput">비밀번호</label>
              </div>
              <span class="point">※ 비밀번호는 총 16자 까지 입력가능</span>
                 <div class="form-floating">
             
             <input id="Withdrawalpassword2" type="password" class="form-control"  name="sm_pw_chk" placeholder="동일하게 입력해주세요." required maxlength="20" autocomplete="off"/>
			<label for="floatingInput">비밀번호확인</label>
		<span class="point successPwChk"></span>
		<input type="hidden" id="pwDoubleChk"/>
              </div>
	   	<fieldset class="fieldarea f2">
	<legend><span>이용</span>약관</legend>
	<p class="agreeText">
		<label for="agreement1">아래 사항에 동의 합니다.</label>
		<input id="agreement1" type="checkbox" name="agreement1"/>
		<textarea id="text1" readonly>
			이용약관
		</textarea>
	</p>
</fieldset>
<fieldset class="fieldarea f3">
	<legend><span>개인정보</span>취급방침</legend>
	<p class="agreeText">
		<label for="agreement2">아래 사항에 동의 합니다.</label>
		<input id="agreement2" type="checkbox" name="agreement2"/>
		<textarea id="text2" readonly>
			개인정보 방침 및 안내
		</textarea>
	</p>
</fieldset>	   		 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소</button>
        <button type="button" id="clickConfirm" class="btn btn-outline-primary" onclick="clickWithdrawal(WithdrawalInfo)">회원탈퇴</button>
      </div>
    </div>
  </div>
</div>


<!-- 비밀번호 변경하기 누르면 넘어갈 데이타 -->
<form name="passwordInfo">
	<input type="hidden" name="u_key" value="${u_key}">
	<input type="hidden"  class="form-control"  name="newpassword1_1" placeholder="id" id="newpassword1_1"> 
	 <input type="hidden"  class="form-control"  name="newpassword2_1" placeholder="id" id="newpassword2_1"> 
	 <input type="hidden"  class="form-control"  name="password1_1" placeholder="id" id="password1_1">   
</form>

<!-- 비밀번호 변경하기 누르면 넘어갈 데이타 -->
<form name="usernameInfo">
	<input type="hidden" name="u_key" value="${u_key}">
	<input type="hidden"  class="form-control"  name="username_1" placeholder="id" id="username_1"> 
	 
</form>

<!-- 회원탈퇴하기 누르면 넘어갈 데이타 -->
<form name="WithdrawalInfo">
	<input type="hidden" name="u_key" value="${u_key}">
	<input type="hidden"  class="form-control"  name="Withdrawalpassword1_1" placeholder="id" id="Withdrawalpassword1_1"> 
    <input type="hidden"  class="form-control"  name="Withdrawalpassword2_1" placeholder="id" id="Withdrawalpassword2_1"> 
</form>



<script>
  // input1 값이 변경될 때마다 input2의 값을 변경하는 JavaScript 
  // 입력값이 변할때마다 넘겨줄 데이타 업데이트
  const input1 = document.getElementById("newpassword1");
  const input2 = document.getElementById("newpassword1_1");
  
  const input3 = document.getElementById("newpassword2");
  const input4 = document.getElementById("newpassword2_1");

  input1.addEventListener("input", () => {
	  
    input2.value = input1.value;
  });
  
  input3.addEventListener("input", () => {
	    input4.value = input3.value;
	  });
</script>


<script>
  // input1 값이 변경될 때마다 input2의 값을 변경하는 JavaScript 
  // 입력값이 변할때마다 넘겨줄 데이타 업데이트
  const input7 = document.getElementById("username");
  const input8 = document.getElementById("username_1");
  input7.addEventListener("input", () => {
	  console.log("1111");
    input8.value = input7.value;
  });
  
  
</script>

<script>
  // input1 값이 변경될 때마다 input2의 값을 변경하는 JavaScript
  const input5 = document.getElementById("password1");
  const input6 = document.getElementById("password1_1");

  input5.addEventListener("input", () => {
	  
    input6.value = input5.value;
  });
</script>

<script>
  const input9 = document.getElementById("Withdrawalpassword1");
  const input10 = document.getElementById("Withdrawalpassword1_1");
  
  const input11 = document.getElementById("Withdrawalpassword2");
  const input12 = document.getElementById("Withdrawalpassword2_1");
  input9.addEventListener("input", () => {
	 
    input10.value = input9.value;
  });
  
  input11.addEventListener("input", () => {
	 
    input12.value = input11.value;
  });




  <!-- 비밀번호 변경하기 누르면 발생 -->
	function clickConfirm(formName) {
		if($("#oldpwDoubleChk").val() != "true" || $("#pwDoubleChk").val() != "true"){
	    	//alert($('#sm_id').val()+"님 환영합니다. 선택해주셔서 감사합니다 :)");
 		// Prevent the page from reloading
	        event.preventDefault();
	        // Set the text-output span to the value of the first input
	      //$('#text-output').text("You typed: " + input);
	        $.ajax({
	    		
	    	})
	    	.done(function( html ) {
	    		
	    	});
 
     	alert("회원가입을 완료할 수 없습니다. 다시한번 확인해주십시오.");
	    	
	    	if($("#oldpwDoubleChk").val() != "true"){
	    		$(".successOldPwChk").text("현재비밀번호를 입력해주세요 :)");
				$(".successOldPwChk").css("color", "red");
				$("#password1").val("");
				
	    	}
	    	if($("#pwDoubleChk").val() != "true"){
	    		$(".successPwChk").text("비밀번호가 일치하지 않습니다 :)");
				$(".successPwChk").css("color", "red");
				$("#newpassword2").val("");
				$("#newpassword1").val("");
				
	    	}
	    //	if($("#emailDoubleChk").val() != "true"){
	    	//	$(".successEmailChk").text("이메일 인증을 완료해주세요 :)");
				//$(".successEmailChk").css("color", "red");
	    //	}
	    	return false
		} else if($("#oldpwDoubleChk").val() == "true" && $("#pwDoubleChk").val() == "true"){
			var password1 = $("#password1").val();
			var u_key = ${u_key};
			console.log(u_key);
				$.ajax({
					url : '${pageContext.request.contextPath}/password1Check?password1='+ password1,
					type : 'post',
					data: {
						u_key: u_key,
				    },
					cache : false,
					success : function(data) {
						if (data == 0) {
						  	alert("현재비밀번호를 정확히 입력해주세요.");
						  	$("#password1").val("");
					    	
						} else {
							
							console.log("비밀번호 일치");
							formName.action = "/userpasswordmodify";
							formName.method = "post";
							formName.submit();
						}
					}, error : function() {
						console.log("실패");
					}
				});
		}
	}
	
	
	
	
	
	
	<!-- 회원탈퇴 버튼 누르면 발생 -->
	function clickWithdrawal(formName) {
		if(!($("#agreement1").prop("checked")) || !($("#agreement2").prop("checked"))  || $("#pwDoubleChk").val() != "true"){
			console.log("비밀번호와 동의사항체크 안함");
			//alert($('#sm_id').val()+"님 환영합니다. 선택해주셔서 감사합니다 :)");
 		// Prevent the page from reloading
	        event.preventDefault();
	        // Set the text-output span to the value of the first input
	      //$('#text-output').text("You typed: " + input);
	        $.ajax({
	    		
	    	})
	    	.done(function( html ) {
	    		
	    	});
 
     	alert("회원탈퇴를 할 수 없습니다. 다시한번 확인해주십시오.");
     	if(!$("#agreement1").prop("checked")){
    		$("label[for=agreement1]").text("동의 해주시기 바랍니다.");
    		$("label[for=agreement1]").css("color","red");
    	}
    	if(!$("#agreement2").prop("checked")) {
    		$("label[for=agreement2]").text("동의 해주시기 바랍니다.");
    		$("label[for=agreement2]").css("color","red");
    	}
	    	if($("#oldpwDoubleChk").val() != "true"){
	    		$(".successOldPwChk").text("현재비밀번호를 입력해주세요 :)");
				$(".successOldPwChk").css("color", "red");
				$("#password1").val("");
				
	    	}
	    	if($("#pwDoubleChk").val() != "true"){
	    		$(".successPwChk").text("비밀번호가 일치하지 않습니다 :)");
				$(".successPwChk").css("color", "red");
				$("#newpassword2").val("");
				$("#newpassword1").val("");
				
	    	}
	    //	if($("#emailDoubleChk").val() != "true"){
	    	//	$(".successEmailChk").text("이메일 인증을 완료해주세요 :)");
				//$(".successEmailChk").css("color", "red");
	    //	}
	    	return false
		} else {
			console.log("전부다 입력완료");
			var Withdrawalpassword1 = $("#Withdrawalpassword1").val();
			var u_key = ${u_key};
			
				$.ajax({
					url : '${pageContext.request.contextPath}/password1Check?password1='+ Withdrawalpassword1,
					type : 'post',
					data: {
						u_key: u_key,
				    },
					cache : false,
					success : function(data) {
						if (data == 0) {
						  	alert("비밀번호를 정확히 입력해주세요.");
						  	$("#Withdrawalpassword1").val("");
						  	$("#Withdrawalpassword2").val("");
					    	
						} else {
							
							console.log("비밀번호 일치");
							formName.action = "/Withdrawal";
							formName.method = "post";
							formName.submit();
						}
					}, error : function() {
						console.log("실패");
					}
				});
		}
	}
</script>

<!-- 승인취소하기 누르면 발생 -->
<script>
	function clickUsernameModify(formName) {
		formName.action = "/usernameModify";
		formName.method = "post";
		formName.submit();
	}
</script>	
	
	

	
	
	
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
    
    
  //비밀번호 확인
	$("#newpassword2").blur(function(){
		if( !$("#newpassword2").val()){
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "red");
			$("#pwDoubleChk").val("false");
		} else if($("#newpassword2").val() == $("#newpassword1").val()){
			$(".successPwChk").text("비밀번호가 일치합니다.");
			$(".successPwChk").css("color", "green");
			$("#pwDoubleChk").val("true");
		}else{
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "red");
			$("#pwDoubleChk").val("false");
		}
	});
  
	//비밀번호 확인2
	$("#Withdrawalpassword2").blur(function(){
		if( !$("#Withdrawalpassword2").val()){
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "red");
			$("#pwDoubleChk").val("false");
		} else if($("#Withdrawalpassword2").val() == $("#Withdrawalpassword1").val()){
			$(".successPwChk").text("비밀번호가 일치합니다.");
			$(".successPwChk").css("color", "green");
			$("#pwDoubleChk").val("true");
		}else{
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "red");
			$("#pwDoubleChk").val("false");
		}
	});
  
  
	//기존비밀번호 체크
	$("#password1").blur(function(){
		var password1 = $("#password1").val();
		if(password1 == "" || password1.length < 2){
			$(".successOldPwChk").text("현재비밀번호는 2자 이상 16자 이하로 설정해주세요 :)");
			$(".successOldPwChk").css("color", "red");
			$("#oldpwDoubleChk").val("false");
		}else{
			$(".successOldPwChk").text("");
			$("#oldpwDoubleChk").val("true");
			
		}
	});
  
	//체크박스 체크여부
	$("input:checkbox").click(checkedChange);
	   function checkedChange() {
	       if($(this).prop("checked")){
	           $("label[for="+this.id+"]").text("동의되었습니다.");
	           $("label[for="+this.id+"]").css("color","blue");
	       }else{
	           $("label[for="+this.id+"]").text("동의 해주시기 바랍니다.");
	           $("label[for="+this.id+"]").css("color","red");
	       }
	   }
    	
</script>
</body>        
</body>
</html>