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
		<title>트레이너 프로필</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>		

<!-- 버튼모달 -->		
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
	
			
		<!-- 이미지 팝업 슬라이드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
 
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>


	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>






	

<!-- 모달 지우지말것 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>

<!-- slit 슬라이드 -->
 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />	
	

</head>
<body>
									 			<p style="color:#ffbc00" class="aa" data-bs-toggle="modal" data-bs-target="#reviewmodifymodal" data-rcontent="${reviewlist.r_content}">수정</p> &nbsp;
  <button name='save'>저장</button><br/>
<!-- 리뷰수정 Modal -->

  <div class="modal fade" id="reviewmodifymodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-80size">
    <div class="modal-content modal-80size">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;"><Strong style="color:black;">솔직한 후기를 남겨주세요!2</Strong></h1>
      </div>
      <div class="modal-body">
        <h6 style="color:black;"><Strong style="color:black;">일반이용 후기 작성 요령</Strong></h6>
        <ul>
        <li style="font-size:15px;">해당 코치님에게 트레이닝을 받은 증빙사진이 필요합니다.
		(PT 약정서/계약서 or 코치님과 함께 찍은 사진 등 기타)</li>
		 <li style="font-size:15px;">증빙사진의 공개/비공개 여부를 선택할 수 있습니다.</li>
		 <li style="font-size:15px;">증빙이 적절하지 않을 시 삭제처리 됩니다.(상시 모니터링 중)</li>
        </ul>
         <h6 style="color:black;"><Strong style="color:black;">별점을 선택해주세요</Strong></h6>
   	
  <!-- 편의 상 가장 첫번째의 별은 기본으로 class="on"이 되게 설정해주었습니다. -->
  
            
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="submitForm()" data-target="#clickReviewinsert" data-bs-dismiss="modal">확인</button>
          <sec:authentication property="principal" var="principal"/> 
   
      </div>
    </div>
  </div>
</div>		
</body>
<script>
$('#reviewmodifymodal').on('show.bs.modal', function(event) {          
    r_content = "fdasf";
 	//document.getElementById("reviewcontent").innerHTML = r_content;
    
    console.log("r_content:");
    $("body").append("click!!!<br/>");
 })
 $(document).ready(function () {
	
  $("button[name='save']").click(function () {
	  console.log("r_content:");
	  
		 console.log("파일업로드성공: ");
		 var a ="aa";
    $("body").append(a+"click!!!<br/>");
  });
});
 
 </script>
</html>