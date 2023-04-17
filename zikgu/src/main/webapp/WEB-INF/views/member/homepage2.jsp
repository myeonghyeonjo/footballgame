<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<!doctype html>
<html lang="Ko">
  
    
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >  -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.2/cerulean/bootstrap.min.css" rel="stylesheet" >
 
  <body>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Album example · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/album/">

    

    

<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
      <!--검색css-->
      
    body,html{
    height: 100%;
    width: 100%;
    margin: 0;
    padding: 0;
    background: #e74c3c !important;
    }

    .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background-color: black;
    border-radius: 30px;
    padding: 10px;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 450px;
     caret-color:red;
    line-height: 40px;
   transition: width 0.4s linear;
     padding: 0 10px;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
   color: #e74c3c;
    text-decoration:none;
    background: white;
    }
    
   .d-flex {
  display: flex;
  flex-wrap: nowrap;
  align-items: center;
  margin-bottom:15px;
  
}

.d-flex h4:not(:last-child) {
  margin-right: 2px; /* 요소 사이의 간격 조절 */
}
    </style>

    
    
    
  
    
  </head>
  <body>
    
<header>
<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
  

</header>

<main>
<sec:authentication property="principal" var="principal"/>
           


  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light" style="color:black;"><Strong>당신의 운동 시작을 응원해요!</Strong></h1>
        <p class="lead text-muted"  style="color:black;">내가 신뢰할 수 있는 선생님을 Health Catch에서 찾아보세요</p>
       
      </div>
    </div>
  </section>





<div class="container h-100">
      <div class="d-flex justify-content-center h-100" style="margin: auto; margine-left:500px;">
        <div class="searchbar" style="margin: auto; margine-left:500px;">
        	<form action="search_All" method="post">
		          <input class="search_input" type="text" name="keyword" placeholder="지역,센터명,선생님 검색" value="${keyword }">
		          <a href="search_All" class="search_icon" ><i class="fas fa-search"></i></a>
          	</form>
        </div>
      </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="album py-5 bg-light">
    <div class="container">
   

<div class="d-flex align-items-center">
  <h4 class="fw-light mb-0" style="color:black;"><strong>Health Catch 트레이너.</strong></h4>
  <h4 class="lead text-muted mb-0" style="color:black;">언제든, 당신에게 맞는 방식으로.</h4>
</div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
       
        
       
   <c:forEach var="filelistAll" items="${filelistAll}" varStatus="status" >
  
   <c:forEach var="centerfilelistAll" items="${centerfilelistAll}" varStatus="status1">

   <c:forEach var="list" items="${list}" varStatus="status2">       	
          
			<c:if test="${status.index == status1.index && status.index == status2.index}">
		
        <div class="col">
          <div class="card shadow-sm">
						<a  href="/trainerDetail?u_key=${list.u_key}"  data-lightbox="example-set"><img style="border-radius: 3%;"src="../../../Img/${filelistAll.file_name}" width="180" height="175"   alt=""
							
						
			 href="../../../Img/${centerfilelistAll.file_name}"  data-lightbox="example-set"><img style="border-radius: 3%;"src="../../../Img/${centerfilelistAll.file_name}" width="180" height="175"   alt=""
						 ></a>			 
		
            <div onclick="location.href='/trainerDetail?u_key=${list.u_key}';" style="cursor: pointer; padding:10px;">
              <p class="card-text" style=" margin-bottom:1px; margin-left:1px"><Strong>${list.tf_name }선생님</Strong></p>
              <p class="card-text" style=" margin-bottom:4px;">${list.tf_hanjulintro }</p>
              	<p class="card-text" style="font-size: 8px; margin-bottom:1px;"><Strong>${list.tf_lessonnumber }${list.tf_lessonunit }</Strong> 기준 ${list.tf_lessonunit }당 <strong>${list.tf_lessonprice }원</Strong></p>
                  <p class="card-text" style="font-size: 8px;">${list.tf_loadaddress }</p>
                  </div>
                   </div>
     
        </div>
            </c:if>
          
        </c:forEach>
        </c:forEach>
		</c:forEach>
   </div>
        </div>
        </div>
</main>

<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.2/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>


    <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

      
  </body>
</html>
