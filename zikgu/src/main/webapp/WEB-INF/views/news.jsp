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
<html layout:decorate="~{layout}">
<title>re:)Pick</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<title>Insert title here</title>
</head>
<body>

<div layout:fragment="content">
   <div>
        <table class= "table">
            <tr>
                <th>이미지</th>
                <th>제목</th>
            </tr>
         	 <c:forEach var="news" items="${news}">
         	 <tr> 
                <td><img src="${news.image}"></a></td>
				<!-- <td><a href="${news.url}"><img src="${news.image}"></a></td> -->
                <!-- <td><a href="${news.url}">${news.subject}</></td> -->
                </a>
                </tr>
          </c:forEach>
         
        </table>
    </div>
    </div>
</body>
</html>
