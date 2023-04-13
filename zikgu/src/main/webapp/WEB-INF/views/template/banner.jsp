<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<!doctype html>
<html lang="Ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>homepage</title>
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >  -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.2/cerulean/bootstrap.min.css" rel="stylesheet" >
  </head>
  <body>
<style>
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
    background-color: black;
   
    
}
.dropdown-item{
	 color: white;
}
.dropdown-toggle{
  color: white;
}

.dropdown-item:hover {
  background-color: black;
   color: red;
}
</style>
   <!-- navbar -->
   	 <!-- navbar -->
   <!-- Navigation-->
        <nav class="navbar navbar-light bg-light static-top">
            <div class="container">
                <a class="navbar-brand" href="/">Health Catch</a>
                <div style="text-align: left;">
           
            
             <sec:authorize access="isAnonymous()">
               <a class="btn btn-primary" href="signin">Sign In</a>
	                <a class="btn btn-primary" href="beforeSignup">Sign Up</a>
           </sec:authorize>
	               
	         <sec:authorize access="isAuthenticated()">        
	            <sec:authentication property="principal" var="principal"/>  
              	 <a class="btn btn-primary"  href="/user/info?u_id=${principal.username }">내 정보</a>
                 <a class="btn btn-primary" href="/logout">로그아웃</a>
                 
      
            </sec:authorize>
                </div>
            </div>
            
       
</nav>
     
     
</body>
</html>