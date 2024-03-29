<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<!-- Main -->
					<div id="main" style="margin-top:-65px;">

						<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight" style="display: flex;">
									<div class="content" style=" display: flex;">
									<div id="tf_reviewUpdateOk" style=" display: flex; ">
									<div style="width: 535px; margin-left:-64px;">
										<header class="major">
										
											<h2 ><Strong style="color:black">최근 후기</Strong></h2>
										</header>
										<ul class="statistics" style="position:relative">
											<li class="style6">
												<span class="icon fa-gem"></span>
												<div style=" display: flex;">
												<strong style="font-size:55px; margin-top:-10px; margin-right:5px;">${staraverage }.0</strong> 
								 		<div class="vertical-align;" >
										<c:if test="${	staraverage==1}">
										   		  <span class="starR2 on" >⭐</span>
										   		
										   	</c:if>
										   		<c:if test="${staraverage==2}">
										   		<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		 
										   	</c:if>
										   		<c:if test="${staraverage==3}">
										   		<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >⭐</span>
										   		  
										   	</c:if>
										   		<c:if test="${staraverage==4}">
										   	<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >⭐</span>
										   		    <span class="starR2 on" >⭐</span>
										   	</c:if>
										   	<c:if test="${staraverage==5}">
										   		<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >⭐</span>
										   		    <span class="starR2 on" >⭐</span>
										   		    <span class="starR2 on" >⭐</span>
										   	</c:if>
											<p style="font-size:13px;">${reviewlistlength }개의 후기</p>
											
											</div>
											<div style="width: 35%;">
											</div>
										<sec:authorize access="hasRole('ROLE_USER')">
										<button  type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#reviewModal" data-ptid="${PT_List.pt_id}" data-ukey="${trainerprofile.u_key}" ><p style="margin-top:3px;">리뷰 남기기</p></button>
										</sec:authorize>
										<!-- 로그인안한사람일 경우 -->
										<sec:authorize access="isAnonymous()">
										<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#reviewModalanonymous">
										  			<p style="margin-top:3px;">리뷰 남기기</p>
												</button>
										</sec:authorize>
										
										</div>
											</li>
										</ul>
										<ul class="statistics" style="position:relative">
											<li class="style6">
												<span class="icon fa-gem"></span>
												<div style=" display: flex;">
											  <h4 style="color:white;">생생한 후기를 확인하세요!</h4>
											  <div style="visibility:hidden; width:10%;"> 빈칸차지용
											  </div>
									<select class="form-select" name="tf_certificate" id="reviewselect" style="flex: 0.85; color:white;" required>
										<option value="new">최신순</option>
										<option value="starhigh">평점높은순</option>
										<option value="starlow">평점낮은순</option>
									</select>
												</div>
												<hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
											<div id="reviewselectlist">
										  <c:forEach var="reviewlist" items="${reviewlist}" varStatus="status1">
										  
										  
										  
										  
										  
										  
										  
										  <!-- 리뷰수정 Modal -->

  <div class="modal fade" id="reviewmodifymodal${reviewlist.r_id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-80size">
    <div class="modal-content modal-80size">
      <div class="modal-header">

        <h6 class="modal-title fs-5" id="exampleModalLabel" style="color:black;"><Strong style="color:black; font-size:20px;">솔직한 후기를 남겨주세요!</Strong></h6>      </div>
      <div class="modal-body">
       <h6 style="color:black;"><Strong style="color:black; font-size:15px; text-align:left;">일반이용 후기 작성 요령</Strong></h6>
        <ul>
         <li style="font-size:14px; color:black; text-align:left;margin-bottom:-40px;margin-top:-20px;">해당 코치님에게 트레이닝을 받은 증빙사진이 필요합니다.
		(PT 약정서/계약서 or 코치님과 함께 찍은 사진 등 기타)</li>
		 <li style="font-size:14px;color:black; text-align:left;margin-bottom:-40px;">증빙사진의 공개/비공개 여부를 선택할 수 있습니다.</li>
		 <li style="font-size:14px; color:black;text-align:left;">증빙이 적절하지 않을 시 삭제처리 됩니다.(상시 모니터링 중)</li>
        </ul>
        <h6 style="color:black;"><Strong style="color:black;  text-align:left;font-size:15px;">별점을 선택해주세요</Strong></h6>
   		<div class="starRev" style="text-align:left;">
  <!-- 편의 상 가장 첫번째의 별은 기본으로 class="on"이 되게 설정해주었습니다. -->
  <c:if test="${reviewlist.r_starR==1 }">
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }">⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  </c:if>
  
  <c:if test="${reviewlist.r_starR==2 }">
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on">⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  </c:if>
  
  <c:if test="${reviewlist.r_starR==3 }">
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on">⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  </c:if>
  
  <c:if test="${reviewlist.r_starR==4 }">
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on">⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id }" >⭐</span>
  </c:if>
  
  <c:if test="${reviewlist.r_starR==5 }">
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  <span class="starR3 ${reviewlist.r_id } on" >⭐</span>
  </c:if>
</div>
         <p><p>					
				
				<div class="opencheck2" style="display: flex;align-items: center;">
 				<h6 style="color:black;"><Strong style="color:black; font-size:15px; text-align:left;">증빙사진을 올려주세요</Strong></h6><p style="color:black;"><Strong style="color:black; font-size:12px;  text-align:left;">( 최대 3장까지 등록가능합니다 )</Strong></p>				
				<c:if test="${reviewlist.r_opencheck==1}">
				<span style="margin-top:-30px; margin-right:-10px;"class="open3 ${reviewlist.r_id } on"  >√</span><p style="color:black;margin-top:5px;">사진공개</p>
				</c:if>
				<c:if test="${reviewlist.r_opencheck==0}">
				<span style="margin-top:-30px; margin-right:-10px;"class="open3 ${reviewlist.r_id }"  >√</span><p style="color:black;margin-top:5px;">사진공개</p>
				</c:if>
				</div>         
         <div  style="display: flex;">
          	
          	  <form method="POST" onsubmit="return false;" enctype="multipart/form-data">
        <input type="file" onchange="addFile2(this);" multiple />
           <input type="hidden" value="${reviewlist.r_id }" />
        <div class="file-reviewmodify-list${reviewlist.r_id }"></div>
  	
   
    </form>
    </div>
						<h6 style="color:black; margin-top:0px;"><Strong style="color:black; font-size:15px; text-align:left;">내용을 작성해주세요</Strong></h6>            <div class="input-group has-validation">
								<textarea style="height:200px;"cols="30" rows="10" class="form-control" id="reviewmodifycontent" name="tf_intro">${reviewlist.r_content}${reviewlist.r_id}</textarea>
							</div>
            
            
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="submitForm2(${reviewlist.r_id })" data-target="#clickReviewinsert" data-bs-dismiss="modal">확인</button>
         <input type="hidden" id="r_id2" value="${reviewlist.r_id }" />
      </div>
    </div>
  </div>
</div>	
										  
	<!-- 리뷰삭제Modal Modal -->
<div class="modal fade" id="deletereviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">리뷰삭제확인</h1>
      </div>
      <div class="modal-body">
       <p style="color:black; text-align:left; margin-bottom:-7px;"> 정말 리뷰를 삭제 하시겠습니까?</p>
      </div>
      <div class="modal-footer">
      <input type="hidden" value="${reviewlist.r_id }" id="r_id">
        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickreviewDelete()"data-target="#clickreviewDelete" value="${reviewlist.r_id}">확인</button>
      </div>
    </div>
  </div>
</div>									  
										  
										  
										  
										  
										  
										  
										  
										  
										  
										  
										  <div >
										 	<div style="text-align:left;">
										 <h5 style="color:white">${reviewlist.memberprofile_name}  ${reviewlist.r_date} 
										 <c:if test="${reviewlist.r_starR==1}">
										   		  <span class="starR2 on" >⭐</span>
										   		  
										   	</c:if>
										   		<c:if test="${reviewlist.r_starR==2}">
										   		<span class="starR2 on" >⭐⭐</span>
										   		
										   		 
										   	</c:if>
										   		<c:if test="${reviewlist.r_starR==3}">
										   		<span class="starR2 on" >⭐⭐⭐</span>
										   		
										   		  
										   	</c:if>
										   		<c:if test="${reviewlist.r_starR==4}">
										   	<span class="starR2 on" >⭐⭐⭐⭐</span>
										   		  
										   	</c:if>
										   	<c:if test="${reviewlist.r_starR==5}">
										   		<span class="starR2 on" >⭐⭐⭐⭐⭐</span>
										   		 
										   	</c:if></h5>  
										   	
										   	
										  	
										   	</div>
										   
										   	<div style="text-align:left;">
										   	<c:forEach var="reviewfilelist" items="${reviewfilelist}" varStatus="status2">
										   				<c:if test="${reviewfilelist.memberprofile_u_key == reviewlist.memberprofile_u_key}">
										   				<c:if test="${reviewfilelist.review_r_id == reviewlist.r_id}">
										   				<c:if test="${reviewlist.r_opencheck==1}">
											<a  href="http://15.164.62.221:8080/static/img/health/img/${reviewfilelist.file_name}"  data-lightbox="example-set5${reviewlist.memberprofile_u_key }${reviewlist.r_date }"><span class="reviewimage"><img style="width:90px; height:90px;" src="http://15.164.62.221:8080/static/img/health/img/${reviewfilelist.file_name}" ></span></a>&nbsp;&nbsp;
											<input type="hidden" value="${reviewfilelist.file_name }" class="filename${reviewlist.r_id}">
											<input type="hidden" value="${reviewfilelist.r_id }" class="file_r_id${reviewlist.r_id}">
											</c:if>
											</c:if>
											</c:if>
											</c:forEach>
												<div style="visibility:hidden;">d</div>
											</div>
										   	
										   	
										    <div id="r_content${reviewlist.r_id}"style="text-align:left;">
										   		${reviewlist.r_content}
										   	</div>
										   
										 
										   	<div style="display: flex;">
											   	<div style="width: 82%;">
												</div>
												
									 			<sec:authorize access="hasRole('ROLE_USER')">
									 				<sec:authentication property="principal" var="principal"/> 
									 		
									 			<c:if test="${principal.u_key==reviewlist.memberprofile_u_key }">
									 			
									 			<p style="color:#ffbc00" class="aa modifyreviewBtn" data-bs-toggle="modal" data-bs-target="#reviewmodifymodal${reviewlist.r_id}" data-rcontent="${reviewlist.r_content}">수정</p> &nbsp;
												<input type="hidden"  value="${trainerprofile.u_key }">			
												<input type="hidden" id="r_id" value="${reviewlist.r_id}">
												<p style="color:grey" class="aa removefileBtn" data-bs-toggle="modal" data-bs-target="#deleteFile1Modal"  data-rid="${reviewlist.r_id}">삭제</p> &nbsp;
												
											
						
												</c:if>
												</sec:authorize>
											</div>
										 
										  	</div>
										  	<div style="visibility:hidden;">d</div>
										  <hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
										  	<div style="visibility:hidden;">d</div>
										  </c:forEach>
										  </div>
										  </li>
										  </ul>
										  </div>
										  <div style="width: 3%; "></div>
										  
										  <!-- 프로필고정 -->
										
										  <div style="width: 40%;">
										  <ul class="statistics " style="position: sticky; top: 15px;">
											<li class="style6" >
												<span class="icon fa-gem"></span>
													<c:forEach var="filelist" items="${filelist}" varStatus="status1">
														<c:if test="${status1.index==0}">
													 	 	<div style="margin-left:-50px; "><a  href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}"  data-lightbox="example-set"><span class="image"><img src="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}" ></span></a></div>
													    </c:if>
													    <c:if test="${status1.index!=0}">
													 	 	<a    href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}" data-lightbox="example-set"></a>
													    </c:if>
												 	 </c:forEach> 
													<strong style="font-size:25px; ">${trainerprofile.tf_name} 트레이너</strong> 
													<strong style="font-size:15px;" class="aa" onclick="Centerview(1);">${center.c_name}</strong> 
											
								 		<div class="vertical-align;">
								 		
										<c:if test="${	staraverage==1}">
										
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >${staraverage }.0</span>
										   		   <span class="starR2 on" >(${reviewlistlength })</span>
										   		
										   	</c:if>
										   		<c:if test="${staraverage==2}">
										   		<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >${staraverage }.0</span>
										   		   <span class="starR2 on" >(${reviewlistlength })</span>
										   		 
										   	</c:if>
										   		<c:if test="${staraverage==3}">
												<a  href="#intro" style="color:white; text-decoration:none;">
												<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >${staraverage }.0</span>
										   		   <span class="starR2 on" >(${reviewlistlength })</span>
												</a>
										   	
										   		
										   		  
										   	</c:if>
										   		<c:if test="${staraverage==4}">
										   	<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >⭐</span>
										   		    <span class="starR on" >⭐</span>
										   		   <span class="starR2 on" >${staraverage }.0</span>
										   		   <span class="starR2 on" >(${reviewlistlength })</span>
										   	</c:if>
										   	<c:if test="${staraverage==5}">
										   		<span class="starR2 on" >⭐</span>
										   		  <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >⭐</span>
										   		    <span class="starR2 on" >⭐</span>
										   		    <span class="starR2 on" >⭐</span>
										   		   <span class="starR2 on" >${staraverage }.0</span>
										   		   <span class="starR2 on" >(${reviewlistlength })</span>
										   	</c:if>
										   
											</div>
											<p>"${trainerprofile.tf_hanjulintro}"</p>
												<P>전문분야 ${outputprogramsub}</P> 
												<P>대표가격 ${trainerprofile.tf_lessonunit}당 ${trainerprofile.tf_lessonprice}원/ ${trainerprofile.tf_lessonnumber}${trainerprofile.tf_lessonunit}기준</P> 
												
												<sec:authorize access="hasRole('ROLE_USER')">
										<sec:authentication property="principal" var="principal"/>  
	<c:if test="${(principal.u_trainercheck=='0')}">
		<sec:authorize access="hasRole('ROLE_USER')">
		<c:if test="${fn:contains(trainerprofile.tf_consulting, principal.u_key)}">
			<button type="button" class="btn btn-success" disabled >
	  			<p style="color:white; margin-top:3px;">상담신청완료<p>
			</button>
			<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#cancelconsultingModal">
	  			<p style="color:white; margin-top:3px;">상담신청취소<p>
			</button>
		</c:if>
		<c:if test="${!(fn:contains(trainerprofile.tf_consulting, principal.u_key))}">
			<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#consultingModal">
	  			<p style="margin-top:3px;">상담신청</p>
			</button>		
		</c:if>
	</sec:authorize>
	</c:if>		
	</sec:authorize>	
	<!-- 로그인안한사람일 경우 -->
	<sec:authorize access="isAnonymous()">
	<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#consultingModalanonymous">
	  			<p style="margin-top:3px;">상담신청</p>
			</button>
	</sec:authorize>		
										</li>
										</ul>
										  </div>
										</div>
									</div>
								</div>
							</section>		
</div>
<script>
$('.modifyreviewBtn').each(function(){
	$(this).on('click', function(event) {
	r_id = $(this).next().next().val();
	console.log("r_id:"+r_id); 
	var filecount=0;
	var filename1 = $('.filename'+ r_id ).eq('0').val()
	var filename2 = $('.filename'+ r_id ).eq('1').val()
	var filename3 = $('.filename'+ r_id ).eq('2').val()
	
	
	var file_r_id1= $('.file_r_id'+ r_id ).eq('0').val()
	var file_r_id2= $('.file_r_id'+ r_id ).eq('1').val()
	var file_r_id3= $('.file_r_id'+ r_id ).eq('2').val()
	
	
	
	
	console.log(filename1);
	console.log(filename2);
	console.log(filename3);
	
	console.log(file_r_id1);
	console.log(file_r_id2);
	console.log(file_r_id3);
	if(filename1){
		filecount++;
	}
	if(filename2){
		filecount++;
	}
	if(filename3){
		filecount++;
	}
	
	console.log("filecount:"+filecount);
	
	filepath1 = "http://15.164.62.221:8080/static/img/health/img/"+filename1;
	filepath2 = "http://15.164.62.221:8080/static/img/health/img/"+filename2;
	filepath3 = "http://15.164.62.221:8080/static/img/health/img/"+filename3;
	console.log("filepath1:"+filepath1);
	console.log("filepath2:"+filepath2);
	console.log("filepath3:"+filepath3);

	
	
	$('.file-reviewmodify-list'+r_id).children().remove();
	 let htmlData2 = '';
	 for(var j=1;j<=filecount;j++){
         

		 if(j==1){
			 htmlData2 += '<div style="display: inline-block;   box-sizing: border-box; padding: 10px; float:left;" id="file' + file_r_id1 + '" class="filebox2'+r_id+'">';
		        htmlData2 += '<img src="' + filepath1 + '" title="' + filename1 + '" width=100 height=100 />';
				 htmlData2 += '  <a class="delete2" onclick="deletemodifyFile(' + file_r_id1 + ');">';
				  htmlData2 += '  <img src="http://15.164.62.221:8080/static/img/health/img/Xicon.JPG" style="height:20px; width:20px;  margin-left:-52px; margin-top:-210px;  cursor:pointer;" alt="Button Icon">';
				  htmlData2 += '</div>';  
		 }
		    else if(j==2){
				 htmlData2 += '<div style="display: inline-block;  box-sizing: border-box; padding: 10px; " id="file' + file_r_id2 + '" class="filebox2'+r_id+'">';
		    	htmlData2 += '<img src="' + filepath2 + '" title="' + filename2 + '" width=100 height=100 />';
				 htmlData2 += '  <a class="delete2" onclick="deletemodifyFile(' + file_r_id2 + ');">';
				  htmlData2 += '  <img src="http://15.164.62.221:8080/static/img/health/img/Xicon.JPG" style="height:20px; width:20px; margin-left:-52px; margin-top:-210px;   cursor:pointer;" alt="Button Icon">';
				  htmlData2 += '</div>';  

		    }
		    else if(j==3){
				 htmlData2 += '<div style="display: inline-block;  box-sizing: border-box; padding: 10px; " id="file' + file_r_id3 + '" class="filebox2'+r_id+'">';
		    	htmlData2 += '<img src="' + filepath3 + '" title="' + filename3 + '" width=100 height=100 />';
				 htmlData2 += '  <a class="delete2" onclick="deletemodifyFile(' + file_r_id3 + ');">';
				  htmlData2 += '  <img src="http://15.164.62.221:8080/static/img/health/img/Xicon.JPG" style="height:20px; width:20px; margin-left:-52px; margin-top:-210px;   cursor:pointer;" alt="Button Icon">';
				  htmlData2 += '</div>'; 
		    }
         }
	 
     $('.file-reviewmodify-list'+r_id).append(htmlData2);
})
})


$("#reviewselect").change( function() {

	console.log("셀렉트박스변경호출");
	let trainerprofile_u_key = $('#trainerprofile_u_key').val();

	let select = $('#reviewselect').val();
	console.log("select:"+select);
	$.ajax({
		method: "POST",
		url: "/aj-reviewselect",
		data: { trainer_u_key: trainerprofile_u_key ,select:select}
	})
	.done(function( html ) {
		console.log(html);
		$('#reviewselectlist').html(html);
	     $( '.slider2' ).slick( {
		          autoplay: true,
		          autoplaySpeed: 1000,
		        } );
		     
		   
	});

});
</script>
</body>
</html>