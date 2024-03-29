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
body {
   
}

.bg-black {
    background-color: #000;
}

#logo {
    width: 30px;
    height: 30px;
    border-radius: 4px;
}

.navbar-brand {
    padding: 14px 20px;
    font-size: 16px;
}

.navbar-nav {
    width: 100%;
     display:flex;
}

.nav-item {
    padding: 6px 14px;
    text-align: center;
}

.nav-link {
    padding-bottom: 10px; 
}

.v-line {
    background-color: gray;
    width: 1px;
    height: 20px;
}

.navbar-collapse.collapse.in {
    display: block !important;
}

@media (max-width: 576px) {
    .nav-item {
        width: 100%;
        text-align: left;
    }
 .navbar-toggler {
	display:none;
}
    .v-line {
        display: none;
    }
    .navbar-expand-sm{
    
    display:;}
 
}
@media (max-width: 568px){
      	.headermenu2{ 		
      		font-size:12.5px; 
      		padding:10px;
      	}
      	#a{
 		 font-size:12.5px; 
 		 width:50px;
}
}


#a{
  
  top: 3px;
  color: white;
}
.dropdown{
 display: inline-block;
  position: relative;
  margin-top:-5px;
 
}
@import url('https://fonts.googleapis.com/icon?family=Material+Icons');

.dropbtn_icon{
  font-family : 'Material Icons';
}
.dropbtn{
  border : 6px solid black;
  border-radius : 10px;
  background-color: black;
  font-weight: 400;
  color : white;
  padding : 12px;
  width :100px;
  text-align: left;
  cursor : pointer;
  font-size : 15px;
}
.dropdown-content{
  display : none;
  position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
  font-weight: 400;
  background-color: #f9f9f9;
  min-width : 115px;
  
  
  
}

.dropdown-content a{
  display : block;
  text-decoration : none;
  color : black;
  font-size: 11px;
  padding : 13px 9px;
}

.dropdown-content a:hover{
  background-color : #ececec
}

.dropdown:hover .dropdown-content {
  display: block;
}
#test {
position: absolute; 
right: 0;
display:flex;
margin-top:-25px;
}

</style>
   <!-- navbar -->
   	 <!-- navbar -->
   <!-- Navigation-->
        
           
            
  <nav>          
       <div class="container-fluid px-0">
    <nav class="navbar navbar-expand-sm navbar-dark bg-black py-0 px-0">
        <a class="navbar-brand" href="/"><img id="logo" src="../../../Img/덤벨.JPG"> &nbsp;&nbsp;&nbsp;Health Catch</a>
        <span class="v-line"></span>  
        <button class="navbar-toggler mr-3" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse2 navbar-collapse2 " id="navbarNav">
            <ul class="navbar-nav">
            	 <sec:authorize access="isAnonymous()">
            	<div id="test">
	                <li class="nav-item">
	                    <a id="a" class="nav-link" href="signin">로그인</a>
	                </li>
               
                
		                <div class="dropdown">
					      <button class="dropbtn"> 
					        <span class="dropbtn_icon">회원가입</span>
					       
					      </button>
					      <div class="dropdown-content">
					        <a href="beforeSignup">회원가입(일반)</a>
					        <a href="beforeSignuptrainer">회원가입(트레이너)</a>
					      
					      </div>
		    		</div>
   			</div>
      </sec:authorize>
                <sec:authorize access="isAuthenticated()">    
                <div id="test">
                <li class="nav-item">
                <sec:authentication property="principal" var="principal"/>  
		    	<a id="a" class="nav-link"  href="/user/info?u_key=${principal.u_key }">내 정보</a>
                </li>
                <li class="nav-item">
                     <a id="a" class="nav-link" href="/logout">로그아웃</a>
                </li>
                </div>
                </sec:authorize>
            </ul>
        </div>
        
    </nav>
</div>

</nav>
     
     
</body>
</html>