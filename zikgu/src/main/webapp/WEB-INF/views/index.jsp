<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.2/cerulean/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>	
     <h1>Home Page</h1>
        <hr>
        <div>
           <sec:authorize access="isAnonymous()">
              <a href="/login">로그인</a>
              <a href="/beforeSignup">회원가입</a>
               <a href="homepage">홈페이지</a>
           </sec:authorize>   
            <sec:authorize access="isAuthenticated()">
               <a href="/logout">로그아웃</a>
                <a href="/hidePhotogame">Hide Photo-게임하기</a>
                <a href="/game">Show Photo-게임하기</a>
                <a href="trainerProfile">트레이너 프로필 등록</a>
                 
               <sec:authentication property="principal" var="principal"/>
               <h2>${principal }</h2>
            </sec:authorize>
            
        </div>
        <div>
         <sec:authorize access="isAuthenticated()">        
               <a href="/user/info">내 정보</a>
               <a href="/admin">관리자</a>
            </sec:authorize>
        </div>   
</body>
</html>
