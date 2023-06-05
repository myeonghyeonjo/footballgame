<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Dashboard Template · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/dashboard/">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.2/cerulean/bootstrap.min.css" rel="stylesheet" >
    

<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
	<style>
	
	

	li2 {
		list-style:none;
		width:50px;
		line-height:50px;
		border:1px solid #ededed;
		float:left;
		text-align:center;
		margin:0 5px;
		border-radius:5px;
	}
</style>

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
      
        @media (min-width: 768px){
      	.headermenu2{
      		display:none;
      	}
      }
       @media (max-width: 768px){
      	.headermenu1{
      		display:none;
      	}
      	.headermenu2{
      		font-size:15px; 
      		padding:10px;
      	}
        @media (max-width: 568px){
      	.headermenu2{ 		
      		font-size:12.5px; 
      		padding:10px;
      	}	
      }  
    </style>
    
    
    
    

    <jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
    <!-- Custom styles for this template -->
    <style>
    .sidemenu:hover{
      	border-bottom: 2px solid #e87a72;
      	
      }
    .headermenu2:hover{
    	border-bottom: 2px solid #e87a72;
    	color:#e87a72;
    }
    #nav_link_memberprofile{
    	 	border-bottom: 2px solid #e87a72;
    	 	color:#2683B9;
    }
    #nav_link_memberprofile2{
    	 	border-bottom: 2px solid #e87a72;
    	 	color:#e87a72;
    }
    .aa {
	text-decoration: none
}

.aa:hover {
	text-decoration: underline;
	cursor: pointer
}
    </style>
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand headermenu1 col-md-3 col-lg-2 me-0 px-3 fs-6" >검색</a>

		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3  col-lg-3 " href="/memberprofilelist">회원 프로필 관리	 
		</a>
		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3  " href="/trainerprofilelist">트레이너 프로필 관리
		</a>
		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3 "id="nav_link_memberprofile2"  href="/centerlist">센터 관리
		</a>
		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3  " href="/reviewlist">리뷰 관리
		</a>
       	<form action="center_search_complete2" method="post" style="width:1200px;" >
		          <input class="form-control form-control-dark  rounded-0 border-0"  aria-label="Search" type="text" name="keyword" id="keyword" placeholder="센터명,센터주소 검색" value="${keyword }">
		          <a href="center_search_complete2?keyword=${keyword}" class="search_icon" ><i class="fas fa-search"></i></a>
          	</form>
   
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link sidemenu active" aria-current="page" href="/memberprofilelist">
              <span data-feather="home" class="align-text-bottom"></span>
              회원목록
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link sidemenu" href="/trainerprofilelist">
              <span data-feather="file" class="align-text-bottom"></span>
              트레이너목록
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link sidemenu" id="nav_link_memberprofile" href="/centerlist">
              <span data-feather="shopping-cart" class="align-text-bottom"></span>
              센터목록
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link sidemenu" href="/reviewlist">
              <span data-feather="users" class="align-text-bottom"></span>
              리뷰관리
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2" class="align-text-bottom"></span>
              Reports
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers" class="align-text-bottom"></span>
              Integrations
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
          <span>Saved reports</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle" class="align-text-bottom"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Current month
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Last quarter
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Year-end sale
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main style="margin-top:5px;" class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2" style="color:black;">센터목록</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
        	<c:set var="keywordLength" value="${fn:length(keyword)}" />
	        
	        
       <select class="form-select" name="tf_certificate" id="reviewselect" style="flex: 0.85;" required>
										<option selected>정렬</option>
										<option value="starhigh">평점높은순</option>
										<option value="starlow">평점낮은순</option>
		</select>
          
        </div>
      </div>

     

    
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
         <tr>
              <th scope="col">번호</th>
              <th scope="col">센터명</th>
              <th scope="col">센터주소</th>
              <th scope="col">우편번호</th>
              <th scope="col">승인여부</th>
            </tr>
          </thead>
          <sec:authentication property="principal" var="principal" />
          <tbody>
		        <c:forEach var="list" items="${list }">
		           		<tr onclick="location.href='selectcenterDetail?c_id=${list.c_id }&u_key=${principal.u_key }'" style="cursor:pointer">
				               <td>${list.c_id }</td>
		              <td>${list.c_name }</td>
		              <td>${list.c_loadaddress }</td>
		              <td>${list.c_postcode }</td>
		               <c:if test="${(list.c_confirm=='0')}">
				 			  <td style="color:red;">승인대기</td>
				  		</c:if>
				  		 <c:if test="${!(list.c_confirm=='0')}">
				 			  <td style="color:green;">승인완료</td>
				  		</c:if>
			            </tr>
					</c:forEach>
          </tbody>
        </table>
      </div>
      
	      <div>
	      	<h3>찾으시는 센터가 없으신가요? </h3>
			<sec:authentication property="principal" var="principal"/>  
	      		<a href="/centerinsert?u_key=${principal.u_key}" class="aa">직접 센터를 등록하세요! ></a> 
	      </div>
     
      
  <!-- 페이지네이션 -->    
	<div>
		<ul>
			 <c:choose>
				<c:when test="${ pagination.prevPage >= 1}">
					<li2>
						<a style="color:black;" href="centerlistcomplete2?page=${pagination.prevPage}">
						◀
						</a>
					</li2>
				</c:when>
			</c:choose> 
			<c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
				
					<c:choose>
						<c:when test="${ pagination.page eq i }">
							
							<li2 style="background-color:#ededed;">
								<span  style="color:black;" >${i}</span>
							</li2>
						</c:when>
						<c:when test="${ pagination.page ne i }">
							<li2>
								<a  style="color:black;"  href="centerlistcomplete2?page=${i}">${i} </a>
							</li2>
						</c:when>
					</c:choose>
			</c:forEach>
			 <c:choose>
				<c:when test="${ pagination.nextPage le pagination.lastPage }">
					<li2 style="">
						<a  style="color:black;"  href="trainerprofilelist?page=${pagination.nextPage}">▶</a>
					</li2>
				</c:when>
			</c:choose> 
		</ul>
	</div>
    </main>
  </div>
</div>
<script>
function allbutton_click() {
	
	console.log("전체버튼을 누르셨습니다.");
	location.href='${path}	/centerlist';

}
function completebutton_click() {
	console.log("완료버튼을 누르셨습니다.");
	location.href='${path}	/centerlistcomplete';
}
function waitebutton_click() {
	console.log("대기버튼을 누르셨습니다.");
	location.href='${path}	/centerlistwaite';
}
</script>	
<script>
function search_allbutton_click() {
	console.log("전체버튼을 누르셨습니다.");
	var keyword = $('#keyword').val();
	var path = '/center_search_All';
	var url = path + '?keyword=' + encodeURIComponent(keyword);
	location.href = url;
}
function search_completebutton_click() {
	console.log("완료버튼을 누르셨습니다.");
	var keyword = $('#keyword').val();
	var path = '/center_search_complete';
	var url = path + '?keyword=' + encodeURIComponent(keyword);
	location.href = url;
}
function search_waitebutton_click() {
	console.log("대기버튼을 누르셨습니다.");
	var keyword = $('#keyword').val();
	var path = '/center_search_waite';
	var url = path + '?keyword=' + encodeURIComponent(keyword);
	location.href = url;
}
</script>	
  </body>
</html>