<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.io.File" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<tr>
  <th>
  	<label for="username">이&emsp;름</label>
  </th>
  <td>
    <input id="username" type="text" name="sm_name" placeholder="이름을 설정해주세요." maxlength="8" title="8자 까지 입력" required autofocus/>
    <span class="point successNameChk">이름은 2자 이상 8자 이하로 설정해주시기 바랍니다.</span>
    <input type="hidden" id="nameDoubleChk"/>
  </td>
  
  </br>
  <th>
		<label for="userid">아이디</label>
	</th>
	<td>
		<input id="sm_id" type="text" name="sm_id" placeholder="아이디를 입력해주세요." required maxlength="10"/>
		<span class="point successIdChk"></span><br/>
		<span class="point">※ 영문자, 소문자 입력가능, 최대 10자 까지 입력</span>
		<input type="hidden" id="idDoubleChk"/>
	</td>
</tr>

<br>
<tr>
	<th>
		<label for="userpass">비밀번호</label>
	</th>
	<td>
		<input id="userpass" type="password" name="sm_pw"  required maxlength="8" autocomplete="off"/>
		<span class="point">※ 비밀번호는 총 8자 까지 입력가능</span>
	</td>
</tr>
<tr>
<br>
	<th>
		<label for="userpasschk">비밀번호 확인</label>
	</th>
	<td>
		<input id="userpasschk" type="password" name="sm_pw_chk" placeholder="동일하게 입력해주세요." required maxlength="8" autocomplete="off"/>
		<span class="point successPwChk"></span>
		<input type="hidden" id="pwDoubleChk"/>
	</td>
</tr>
<br>

<!--  <tr class="email">
	<th>
		<label for="useremail">이메일</label>
	</th>
	<td>
		<p>
			<input id="sm_email" type="text" name="sm_email" title="이메일 주소를 입력해주세요." required/>
			<button id="emailChk" class="doubleChk">인증번호 보내기</button><br/>
			<input id="sm_email2" type="text" name="sm_email2" title="인증번호 입력" disabled required/>
			<span id="emailChk2" class="doubleChk">이메일인증</span>
			<span class="point successEmailChk">이메일 입력후 인증번호 보내기를 해주십시오.</span>
			<input type="hidden" id="emailDoubleChk"/>
		</p>
		<p class="tip">
			아이디 비밀번호 분실시 필요한 정보이므로, 정확하게 기입해 주십시오.
		</p>
	</td>
</tr>
-->
<tr class="mobileNo">
	<th>
		<label for="phone">휴대폰 번호</label>
	</th>
	<td>
		<p>
			<input id="phone" type="text" name="phone" title="전화번호 입력" required/>
			<button id="phoneChk" class="doubleChk">인증번호 보내기</button><br/>
			<input id="phone2" type="text" name="phone2" title="인증번호 입력" disabled required/>
			<button id="phoneChk2" class="doubleChk">본인인증</button>
			<span class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span>
			<input type="hidden" id="phoneDoubleChk"/>
		</p>
		<p class="tip">
			최초 가입 시에만 사용하고 있습니다. 따로 저장되지 않습니다.(번호만 입력해주세요.)
		</p>
	</td>
</tr>



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

<div class="btnCenter">
	<input type="submit" id="button1" value="회원가입" title="등록하기 버튼"/>
	<input type="reset" id="button2" value="다시쓰기" title="다시쓰기 버튼"/>
</div>






<div id="signupComplete">

</div>
  
        
        
        
        
<script>
//이름중복체크
$("#username").blur(function(){
	var sm_name = $("#username").val();
	if(sm_name == "" || sm_name.length < 2){
		$(".successNameChk").text("이름은 2자 이상 8자 이하로 설정해주세요 :)");
		$(".successNameChk").css("color", "red");
		$("#nameDoubleChk").val("false");
	}else{
		$.ajax({
			url : '${pageContext.request.contextPath}/nameCheck?sm_name='+ sm_name,
			type : 'post',
			cache : false,
			success : function(data) {
				if (data == 0) {
					$(".successNameChk").text("사용가능한 이름입니다.");
					$(".successNameChk").css("color", "green");
					$("#nameDoubleChk").val("true");
				} else {
					$(".successNameChk").text("사용중인 이름입니다 :p");
					$(".successNameChk").css("color", "red");
					$("#nameDoubleChk").val("false");
				}
			}, error : function() {
				console.log("실패");
			}
		});
	}
});


//id중복체크
$("#sm_id").blur(function(){
	var sm_id = $("#sm_id").val();
	if(sm_id == "" || sm_id.length < 2){
		$(".successIdChk").text("ID은 2자 이상 8자 이하로 설정해주세요 :)");
		$(".successIdChk").css("color", "red");
		$("#idDoubleChk").val("false");
	}else{
		$.ajax({
			url : '${pageContext.request.contextPath}/idCheck?sm_id='+ sm_id,
			type : 'post',
			cache : false,
			success : function(data) {
				if (data == 0) {
					$(".successIdChk").text("사용가능한 ID입니다.");
					$(".successIdChk").css("color", "green");
					$("#idDoubleChk").val("true");
				} else {
					$(".successIdChk").text("사용중인 ID입니다 :p");
					$(".successIdChk").css("color", "red");
					$("#idDoubleChk").val("false");
				}
			}, error : function() {
				console.log("실패");
			}
		});
	}
});


//폰중복체크
$("#phone").blur(function(){
	var phone = $("#phone").val();
	if(phone == "" || phone.length < 2){
		$(".successPhoneChk").text("휴대폰번호를 입력해주세요 :)");
		$(".successPhoneChk").css("color", "red");
		$("#phoneDoubleChk").val("false");
	}else{
		$.ajax({
			url : '${pageContext.request.contextPath}/phoneCheck2?phone='+ phone,
			type : 'post',
			cache : false,
			success : function(data) {
				if (data == 0) {
					$(".successPhoneChk").text("사용가능한 폰번호입니다.");
					$(".successPhoneChk").css("color", "green");
					$("#phoneDoubleChk").val("true");
					$("#phoneChk").prop('disabled', false);
				} else {
					$(".successPhoneChk").text("사용중인 폰번호입니다 :p");
					$(".successPhoneChk").css("color", "red");
					$("#phoneDoubleChk").val("false");
					$("#phoneChk").prop('disabled', true);
					
				}
			}, error : function() {
				console.log("실패");
			}
		});
	}
});

//비밀번호 확인
	$("#userpasschk").blur(function(){
		if( !$("#userpasschk").val()){
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "red");
			$("#pwDoubleChk").val("false");
		} else if($("#userpasschk").val() == $("#userpass").val()){
			$(".successPwChk").text("비밀번호가 일치합니다.");
			$(".successPwChk").css("color", "green");
			$("#pwDoubleChk").val("true");
		}else{
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "red");
			$("#pwDoubleChk").val("false");
		}
	});


	//이메일 인증
	var code = "";
	$("#emailChk").click(function(){
		var sm_email = $("#sm_email").val();
		$.ajax({
	        type:"GET",
	        url:"mailCheck?sm_email=" + sm_email,
	        cache : false,
	        success:function(data){
	        	console.log(data);
	        	if(data == "error"){
	        		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
					$("#sm_email").attr("autofocus",true);
					$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
					$(".successEmailChk").css("color","red");
	        	}else{	        		
					alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
	        		$("#sm_email2").attr("disabled",false);
	        		$("#emailChk2").css("display","inline-block");
	        		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
	        		$(".successEmailChk").css("color","green");
	        		code = data;
	        	}
	        }
	    });
	});
	
	//이메일 인증번호 대조
	$("#emailChk2").click(function(){
		if($("#sm_email2").val() == code){
			$(".successEmailChk").text("인증번호가 일치합니다.");
			$(".successEmailChk").css("color","green");
			$("#emailDoubleChk").val("true");
			$("#sm_email2").attr("disabled",true);
			//$("#sm_email").attr("disabled",true);
		}else{
			$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successEmailChk").css("color","red");
			$("#emailDoubleChk").val("false");
			$("#sm_email2").attr("autofocus",true);
		}
	});
	
	//휴대폰 번호 인증
	var code2 = "";
	$("#phoneChk").click(function(){
		if(!$("#phone").val()){
			alert("휴대폰 번호를 입력해주세요");
			return;
		} 
		alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
		var phone = $("#phone").val();
		$.ajax({
	        type:"GET",
	        url:"phoneCheck?phone=" + phone,
	        cache : false,
	        success:function(data){
	        	if(data == "error"){
	        		alert("휴대폰 번호가 올바르지 않습니다.")
					$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
					$(".successPhoneChk").css("color","red");
					$("#phone").attr("autofocus",true);
	        	}else{	        		
	        		$("#phone2").attr("disabled",false);
	        		$("#phoneChk2").css("display","inline-block");
	        		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
	        		$(".successPhoneChk").css("color","green");
	        		$("#phone").attr("readonly",true);
	        		code2 = data;
	        	}
	        }
	    });
	});

	
	//휴대폰 인증번호 대조
	$("#phoneChk2").click(function(){
		if(!code2){
			$(".successPhoneChk").text("휴대폰번호를 입력한 뒤 인증번호 보내기를 눌러주세요");
			$(".successPhoneChk").css("color","red");
			$("#phone").attr("autofocus",true);
		} else{
			if($("#phone2").val() == code2){
				$(".successPhoneChk").text("인증번호가 일치합니다.");
				$(".successPhoneChk").css("color","green");
				$("#phoneDoubleChk").val("true");
				$("#phone2").attr("disabled",true);
			}else{
				$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
				$(".successPhoneChk").css("color","red");
				$("#phoneDoubleChk").val("false");
				$(this).attr("autofocus",true);
			}
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
	   
	   //최종 틍록하기 버튼 클릭시 각 부분별 입력값 맞는지 확인
	    $("#button1").click(function(){
		    if($("#agreement1").prop("checked") && $("#agreement2").prop("checked") && $("#nameDoubleChk").val() == "true" && $("#idDoubleChk").val() == "true" && $("#pwDoubleChk").val() == "true"  && $("#phoneDoubleChk").val() == "true"){
		    	//alert($('#sm_id').val()+"님 환영합니다. 선택해주셔서 감사합니다 :)");
	   
	   
	   
	   
	   
	   
		    	// Prevent the page from reloading
		        event.preventDefault();
		        
		        // Set the text-output span to the value of the first input
		     
		        var name = $("#username").val();
		        var id = $("#sm_id").val();
		        var password = $("#userpass").val();
		        var phone = $("#phone").val();
		       console.log(name,id,password,phone);
		        //$('#text-output').text("You typed: " + input);
		        $.ajax({
		    		method: "POST",
		    		url: "/signup",
		    		data: { username : id , uName : name , password:password, phone:phone }
		    	})
		    	.done(function( html ) {
		    		console.log(html);
		    		 $('.signupComplete').html(html);
		    	});
		        }else{
		    	alert("회원가입을 완료할 수 없습니다. 다시한번 확인해주십시오.");
		    	if(!$("#agreement1").prop("checked")){
		    		$("label[for=agreement1]").text("동의 해주시기 바랍니다.");
		    		$("label[for=agreement1]").css("color","red");
		    	}
		    	if(!$("#agreement2").prop("checked")) {
		    		$("label[for=agreement2]").text("동의 해주시기 바랍니다.");
		    		$("label[for=agreement2]").css("color","red");
		    	}
		    	if($("#nameDoubleChk").val() != "true"){
		    		$(".successNameChk").text("이름를 입력해주세요 :)");
					$(".successNameChk").css("color", "red");
		    	}
		    	if($("#idDoubleChk").val() != "true"){
		    		$(".successIdChk").text("아이디를 입력해주세요 :)");
					$(".successIdChk").css("color", "red");
		    	}
		    	if($("#pwDoubleChk").val() != "true"){
		    		$(".successPwChk").text("비밀번호가 일치하지 않습니다 :)");
					$(".successPwChk").css("color", "red");
		    	}
		    //	if($("#emailDoubleChk").val() != "true"){
		    	//	$(".successEmailChk").text("이메일 인증을 완료해주세요 :)");
					//$(".successEmailChk").css("color", "red");
		    //	}
		    	if($("#phoneDoubleChk").val() != "true"){
		    		$(".successPhoneChk").text("휴대폰 인증을 완료해주세요 :)");
					$(".successPhoneChk").css("color", "red");	    		
		    	}
		    	return false
		    }    	    	
	    });
	    
	    $("#button2").click(function(){
	    	console.log("호출");
	    	$("#username").val("");
	    	$("#sm_id").val("");
	    	//$("#emailDoubleChk").val("false");
	    	$("#phone").val("");
	    	$("#userpass").val("");
	    	$("#userpasschk").val("");
	    	$("#sm_email").attr("readonly",false);
	    	$("#phone").attr("readonly",false);
	    });
</script>
</body>
</html>