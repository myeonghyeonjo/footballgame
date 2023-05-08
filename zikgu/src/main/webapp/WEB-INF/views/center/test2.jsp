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

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<style>
.insert {
    padding: 20px 30px;
    display: block;
    width: 600px;
    margin: 5vh auto;
    height: 90vh;
    border: 1px solid #dbdbdb;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.insert .file-list {
    height: 200px;
    overflow: auto;
    border: 1px solid #989898;
    padding: 10px;
}
.insert .file-list .filebox p {
    font-size: 14px;
    margin-top: 10px;
    display: inline-block;
}
.insert .file-list .filebox .delete i{
    color: #ff5353;
    margin-left: 5px;
}
</style>


<body>
<div class="insert">
    <form method="POST" onsubmit="return false;" enctype="multipart/form-data">
        <input type="file" onchange="addFile(this);" multiple />
          
        <div class="file-list"></div>
  		<button onclick="submitForm()">
    업로드
  </button>
   
    </form>
    
   
      
       
</div>

</body>
<script>
var fileNo = 0;
var filesArr = new Array();




/* 첨부파일 추가 */
function addFile(obj){
    var maxFileCnt = 5;   // 첨부파일 최대 개수
    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

   
   
    console.log("obj.target.value:"+event.target.value);
    
 
    // 첨부파일 개수 확인
    if (curFileCnt > remainFileCnt) {
        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    } else {
    	
        for (const file of obj.files) {
        	 let value = URL.createObjectURL(event.target.files[0]); 
        	    console.log("value:"+value);
        	    console.log("fileNo:"+fileNo);
        	
            // 첨부파일 검증
            if (validation(file)) {
                // 파일 배열에 담기
                var reader = new FileReader();

                reader.onload = function (event) {
                	
				    filesArr.push(file);
				   
                   
                  
                };
                reader.readAsDataURL(file);
				console.log(event.target.result);
                // 목록 추가
                let htmlData = '';
                htmlData += '<div id="file' + fileNo + '" class="filebox">';
                htmlData += '   <p class="name">' + file.name + '</p>';
     		  htmlData += '<div style="display: inline-flex; padding: 10px;"><li>';
     		  htmlData +=  '<img src="'+value+'" title="'+file.name+'" width=100 height=100 />';
     		  htmlData += '</li></div>';
     		  htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><button>삭제</button></a>';
                htmlData += '</div>';
                $('.file-list').append(htmlData);
                
                
               
                
                
                fileNo++;
            } else {
                continue;
            }
        }
    }
    // 초기화
    document.querySelector("input[type=file]").value = "";
}

/* 첨부파일 검증 */
function validation(obj){
    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    if (obj.name.length > 100) {
        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
        return false;
    } else if (obj.size > (100 * 1024 * 1024)) {
        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
        return false;
    } else if (obj.name.lastIndexOf('.') == -1) {
        alert("확장자가 없는 파일은 제외되었습니다.");
        return false;
    } else if (!fileTypes.includes(obj.type)) {
        alert("첨부가 불가능한 파일은 제외되었습니다.");
        return false;
    } else {
        return true;
    }
}

/* 첨부파일 삭제 */
function deleteFile(num) {
    document.querySelector("#file" + num).remove();
    filesArr[num].is_delete = true;
}

/* 폼 전송 */
function submitForm() {
    // 폼데이터 담기
    var form = document.querySelector("form");
    var formData = new FormData(form);
    for (var i = 0; i < filesArr.length; i++) {
        // 삭제되지 않은 파일만 폼데이터에 담기
        if (!filesArr[i].is_delete) {
            formData.append("attach_file", filesArr[i]);
        }
    }

	var test = 'test333';
	console.log("test:"+test);
	
	var data = {   
		    "test"    : test
		  
		}
	formData.append('test', new Blob([ JSON.stringify(data) ], {type : "application/json"}));
    $.ajax({
        type:"POST",
        url: "/register",
        processData: false,
        contentType: false,
      	data: formData,
        success: function(rtn){
          console.log("파일업로드성공: ", rtn)
        },
        err: function(err){
          console.log("파일업로드실패:", err)
        }
      })
}
</script>
</html>