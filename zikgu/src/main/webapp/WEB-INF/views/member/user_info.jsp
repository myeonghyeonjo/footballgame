<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>	
	<h1>마이 페이지</h1>
	<hr>
        <div>
           <sec:authorize access="isAuthenticated()">
              <sec:authentication property="principal" var="principal"/>
               <h2>${principal }</h2>
           
           <a href="/">돌아가기</a>
           <a href="/centerinsert?u_key=${u_key}">센터 등록</a>
           <a href="/centerlist">센터 리스트</a>
           <a href="/trainerProfile?u_key=${u_key}">프로필 등록</a>
           <a href="/trainerDetail?u_key=${u_key}">프로필 보기</a>
         </sec:authorize>
        </div>
</body>
</html>
