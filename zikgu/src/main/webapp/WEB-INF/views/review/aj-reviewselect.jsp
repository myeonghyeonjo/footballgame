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
<meta charset="UTF-8">
</head>
<body>
<div>
										  <c:forEach var="reviewlist" items="${reviewlist}" varStatus="status1">
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
										   				<c:if test="${reviewfilelist.r_date == reviewlist.r_date}">
											<a  href="http://15.164.62.221:8080/static/img/health/img/${reviewfilelist.file_name}"  data-lightbox="example-set5${reviewlist.memberprofile_u_key }${reviewlist.r_date }"><span class="reviewimage"><img style="width:90px; height:90px;" src="http://15.164.62.221:8080/static/img/health/img/${reviewfilelist.file_name}" ></span></a>&nbsp;&nbsp;
											</c:if>
											</c:if>
											
											</c:forEach>
												<div style="visibility:hidden;">d</div>
											</div>
										   	
										   	
										    <div style="text-align:left;">
										   		${reviewlist.r_content}
										   	</div>
										   	
										  	</div>
										  	<div style="visibility:hidden;">d</div>
										  <hr style="margin: 12px; color:white; border-width:2px 0 0 0;">
										  	<div style="visibility:hidden;">d</div>
										  </c:forEach>
										  </div>
</body>
</html>