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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>		



</head>

<body>
<div id="sectionbox" class=""
								style=" margin-top:-10px; margin-left:-10px; background-color: black; width:798px; ">
					<p style="text-align: center;  margin-top:13px; margin-bottom:0.5px; "><strong style="color:white;">&nbsp;&nbsp;· ${trainerprofile.tf_lessontitle }</strong></p>
								<hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
								<p style=" margin-left:30px; margin-top:20px; text-align:left;">${trainerprofile.tf_lessonnumber }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:530px; margin-top:-50px; "> ${trainerprofile.tf_lessonunit }당 <Strong style="color:white;">${trainerprofile.tf_lessonprice }원</Strong></p>
								<p style=" margin-left:530px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber*trainerprofile.tf_lessonprice }원</p>
								<hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
								<p style=" margin-left:30px; margin-top:20px; text-align:left; ">${trainerprofile.tf_lessonnumber2 }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:530px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong style="color:white;">${trainerprofile.tf_lessonprice2 }원</Strong></p>
								<p style=" margin-left:530px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber2*trainerprofile.tf_lessonprice2 }원</p>
								<hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
								<p style=" margin-left:30px; margin-top:20px; text-align:left;">${trainerprofile.tf_lessonnumber3 }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:530px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong style="color:white;">${trainerprofile.tf_lessonprice3 }원</Strong></p>
								<p style=" margin-left:530px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber3*trainerprofile.tf_lessonprice3 }원</p>
							<hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
								<p style=" margin-left:30px; margin-top:20px; text-align:left;">${trainerprofile.tf_lessonnumber4 }${trainerprofile.tf_lessonunit }</p>                    
								<p style=" margin-left:530px; margin-top:-50px;"> ${trainerprofile.tf_lessonunit }당 <Strong style="color:white;">${trainerprofile.tf_lessonprice4 }원</Strong></p>
								<p style=" margin-left:530px; margin-top:-19px; margin-bottom:6px; font-size:12px;"> ${trainerprofile.tf_lessonnumber4*trainerprofile.tf_lessonprice4 }원</p>
								<hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
								
								
									<P >ㆍ 레슨 1회에 ${ trainerprofile.tf_lessontime} 진행됩니다.</P> 
									<P style="margin-top:-18px;">ㆍ ${ trainerprofile.tf_lessonoption}</P>
									<P style="margin-top:-18px;">ㆍ ${ trainerprofile.tf_lessonintro}</P>  
								</div>
</body>
</html>