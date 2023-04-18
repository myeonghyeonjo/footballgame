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

<title>게임플레이</title>
<style>
            form {
                text-align: center;
            }
            
            input {
                font-size: 16px;
                margin-top: 20px;
            }
            
            /*
            first-child is used to select the first
            element in another element
            */
            p:first-child {
                width: 400px;
                text-align: center;
                margin:auto;
                margin-top: 10px;
            }
        </style>
</head>

<body>
	<h1>K1리그 선수 맞추기</h1>

<div class="gameResult2">
<form>
	검색<input type="text" id="autoComplete"	placeholder="GUESS ${playCount} OF 5"  autofocus>
		<button type="submit">제출</button>
		
	</form>

</div>

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

//Attach an event for when the user submits the form
$('form').on('submit', function(event) {
    
    // Prevent the page from reloading
    event.preventDefault();
    
    // Set the text-output span to the value of the first input
    var $input = $(this).find('input');
    var input = $input.val();
    
    console.log("input:"+ input);
    console.log("team:" +team);
    //$('#text-output').text("You typed: " + input);
    $.ajax({
		method: "POST",
		url: "hidePhoto-aj-gameProcess",
		data: { name : input , team : team }
	})
	.done(function( html ) {
		console.log(html);
		 $('.gameResult2').html(html);
	});
    
});
  </script>
</html>