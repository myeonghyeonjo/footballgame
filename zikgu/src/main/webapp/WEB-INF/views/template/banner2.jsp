<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="UTF-8">
<style>
    body{
        margin:0px;
    }
    a{
        text-decoration:none;
        color:white;
    }
    .navbar{
        display:flex;
        justify-content:space-between;
        align-items:center;
        background-color:black;
        height:58px;
    }
    .navber__links{
        
        display:flex;
    }
    .dropdown{
      position : relative;
      display : inline-block;
    }
	li{
	list-style-type: none;
	}
    .dropdown-content{
      display : none;
      position : absolute;
      z-index : 1; /*다른 요소들보다 앞에 배치*/
    }

    .dropdown-content a{
      display : block;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }
    .dropdown-content{
      display : none;
      position : absolute;
      z-index : 1; /*다른 요소들보다 앞에 배치*/
      font-weight: 400;
      background-color: #f9f9f9;
      min-width : 200px;
      margin-top:9px;

    }

    .dropdown-content a{
      display : block;
      text-decoration : none;
      color : rgb(37, 37, 37);
      font-size: 15px;
      padding : 12px 20px;

    }

    .dropdown-content a:hover{
      background-color : #ececec
    }
    .dropbtn{
      padding : 12px;
      width :500px;
      cursor : pointer;

    }
#logo {
    width: 30px;
    height: 30px;
    border-radius: 4px;
}
.navbar{
	padding:14px;
}
.nav-link{
	pading:10px;
}
li{
	margin-right:18px;
}
#nav-link3{
	margin-right:14px;
}
.navbar__logo{
	margin-left:2px;
}
#bannertitle{
	margin-left:-2px;
	letter-spacing: -0.1px;
	word-spacing:-1px;
}



</style>

</head>
<body>
   <nav class="navbar">
        <div class="navbar__logo">
            <i class="fa"><a href="/"><img id="logo" src="../../../Img/덤벨.JPG"></a></i>
            <a id="bannertitle" href="/">Health Catch</a>
        </div>
        <div class="navbar__menu">
        </div>
        <sec:authorize access="isAnonymous()">
        <div class="navber__links">
           
              <li><div class="dropdown">
                  <span style="color:white;" id="nav-link1"class="nav-link">회원가입</span>
                  <div class="dropdown-content">
                    <a href="beforeSignup">회원가입(일반)</a>
                    <a href="beforeSignuptrainer">회원가입(트레이너)</a>
                  </div>
                </div>
              </li>
               <li><a style="color:white;" class="nav-link"id="nav-link2" href="signin">로그인</a></li>
        </div>
        </sec:authorize>

        <sec:authorize access="isAuthenticated()">
                <div class="navber__links">
                <sec:authentication property="principal" var="principal"/>  
		    	  <li><a  style="color:white;" class="nav-link" id="nav-link3" href="/user/info?u_key=${principal.u_key }">내정보</a></li>
                  <li><a  style="color:white;" class="nav-link" id="nav-link4" href="/logout">로그아웃</a></li>
                </div>
        </sec:authorize>
   </nav>
<script>

</script>

</body>
</html>