<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.io.File" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery auto complete -->

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<!--   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.2/cerulean/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<!-- 게시글 -->
<div class="row mt-4">
	<div class="col-md-10 offset-md-1">
		<table class="table table-hover">
			<thead class="bg-dark text-light text-center">
		
	
		
		
			<c:if test="${playCount == 4 }"> 
    			   <button><a href="/game">다시하기</a></button>
    				<td> 정답</td>
    		<!-- 랜덤으로 나온 정답플레이어 -->
               		<tr>
						<td>${answer.name}</td>
						<td>${answer.shirt}</td>
						<td>${answer.pos}</td>
						<td>${answer.team}</td>
						<td>${answer.age}</td>
					</tr>
       
       		 </c:if>
			

<!--    사용자가 입력한 플레이어 -->
		
 
 <c:forEach var="answerAll" items="${answerAll}">
 
	    		<th>${answerAll.name}</th>
	    				<c:choose> 
							<c:when test="${answerAll.shirt == answer.shirt}">
									<td style = "background-color:green">${answerAll.shirt}</td>
							</c:when> 
							<c:when test="${answerAll.shirt != answer.shirt}">
								<td style = "background-color:grey">${answerAll.shirt} (${answerAll.shirtcondition};)</td>
							</c:when> 
						</c:choose>
						<c:choose>
							<c:when test="${answerAll.pos == answer.pos}">
								<td style = "background-color:green">${answerAll.pos}</td>
							</c:when> 
							
							<c:when test="${answerAll.pos != answer.pos}">
								<td style = "background-color:grey">${answerAll.pos}</td>
							</c:when> 
								</c:choose> 
								<c:choose>
							<c:when test="${answerAll.team == answer.team}">
								<td style = "background-color:green">${answerAll.team}</td>
							</c:when> 
							
							<c:when test="${answerAll.team != answer.team}">
								<td style = "background-color:grey">${answerAll.team}</td>
							</c:when> 
								</c:choose> 
								<c:choose>
							<c:when test="${answerAll.agecondition == '같음'}">
								<td style = "background-color:green">${answerAll.age}</td>
							</c:when> 
							
							<c:when test="${answerAll.age != answer.age}">
								<td style = "background-color:grey">${answerAll.age} (${answerAll.agecondition})</td>
							</c:when> 
							
						</c:choose> 
						</tr>
				</c:forEach>
			</body>
	
<script>
var team = '';
$('#autoComplete').autocomplete({
	source : function(request, response) { //source: 입력시 보일 목록
	     $.ajax({
	           url : "/ajax/autocomplete.do"   
	         , type : "POST"
	         , dataType: "JSON"
	         , data : {value: request.term}	// 검색 키워드
	         , success : function(data){ 	// 성공
	             response(
	                 $.map(data.resultList, function(item) {
	                	
	                     return {
	                    	     label : item.name+"("+item.team+")"    	// 목록에 표시되는 값
	                           , value : item.name 		// 선택 시 input창에 표시되는 값
	                           , idx : item.id
	                           , team : item.team
	                         
	                           // index
	                     };
	                 })
	             );    //response
	         }
	         ,error : function(){ //실패
	             alert("오류가 발생했습니다.");
	         }
	     });
	}
	,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
	}
	,minLength: 1// 최소 글자수
	,autoFocus : true // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
	,delay: 100	//autocomplete 딜레이 시간(ms)
	,select : function(evt, ui) { 
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
			console.log(ui.item.label);
			console.log(ui.item.idx);
			console.log(ui.item.team);
			team=ui.item.team;
			
	 }
});
</script>
