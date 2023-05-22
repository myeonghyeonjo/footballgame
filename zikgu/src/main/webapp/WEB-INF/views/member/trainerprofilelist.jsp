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
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand headermenu1 col-md-3 col-lg-2 me-0 px-3 fs-6" >검색</a>

		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3  col-lg-3 " href="/memberprofilelist">회원 프로필 관리	 
		</a>
		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3  " href="/trainerprofilelist">트레이너 프로필 관리
		</a>
		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3 " href="/centerlist">센터 관리
		</a>
		  <a  class="navbar-brand headermenu2 col-md-3 col-xs-3  " href="#">리뷰 관리
		</a>
       	<form action="trainer_search_All" method="post" style="width:1200px;" >
		          <input class="form-control form-control-dark  rounded-0 border-0"  aria-label="Search" type="text" name="keyword" placeholder="번호,회원명 검색" value="${keyword }">
		          <a href="trainer_search_All?keyword=${keyword}" class="search_icon" ><i class="fas fa-search"></i></a>
          	</form>
   
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">
              <span data-feather="home" class="align-text-bottom"></span>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file" class="align-text-bottom"></span>
              Orders
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart" class="align-text-bottom"></span>
              Products
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="users" class="align-text-bottom"></span>
              Customers
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
        <h1 class="h2" style="color:black;">트레이너목록</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
         <div class="btn-group me-2">
       		<c:if test="${sort == '전체' }">
	            <button type="button" style="background-color:#c0c0c0;"onclick="allbutton_click();" id="allbutton" class="btn btn-sm btn-outline-secondary">전체</button>
	            <button type="button"  onclick="completebutton_click();" id="completebutton" class="btn btn-sm btn-outline-secondary">완료</button>
	             <button type="button" onclick="waitebutton_click();" id="waitebutton" class="btn btn-sm btn-outline-secondary">대기</button>
            </c:if>
         	<c:if test="${sort == '완료' }">
	            <button type="button" onclick="allbutton_click();" id="allbutton" class="btn btn-sm btn-outline-secondary">전체</button>
	            <button type="button" style="background-color:#c0c0c0;" onclick="completebutton_click();" id="completebutton" class="btn btn-sm btn-outline-secondary">완료</button>
	             <button type="button" onclick="waitebutton_click();" id="waitebutton" class="btn btn-sm btn-outline-secondary">대기</button>
            </c:if>
            <c:if test="${sort == '대기' }">
	            <button type="button" onclick="allbutton_click();" id="allbutton" class="btn btn-sm btn-outline-secondary">전체</button>
	            <button type="button"  onclick="completebutton_click();" id="completebutton" class="btn btn-sm btn-outline-secondary">완료</button>
	             <button type="button" style="background-color:#c0c0c0;" onclick="waitebutton_click();" id="waitebutton" class="btn btn-sm btn-outline-secondary">대기</button>
            </c:if>
          </div>
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
              <th scope="col">회원명</th>
              <th scope="col">거주지</th>
              <th scope="col">우편번호</th>  
               <th scope="col">성별</th>
              <th scope="col">검토</th>  
            </tr>
          </thead>
          <sec:authentication property="principal" var="principal" />
          <tbody>
		        <c:forEach var="list" items="${list }">
		           		<tr onclick="location.href='trainerProfileDetail?u_key=${list.u_key }&memberprofile_u_key=0'" style="cursor:pointer">
				              <td>${list.tf_id }</td>
				              <td>${list.tf_name }</td>
				              <td>${list.tf_loadaddress }</td>
				               <td>${list.tf_postcode }</td>
				              <td>${list.tf_gender }</td>
				                <c:if test="${(list.tf_check=='완료')}">
						 			  <td style="color:green;">완료</td>
						  		</c:if>
						  		 <c:if test="${(list.tf_check=='대기')}">
						 			  <td style="color:red;">대기</td>
						  		</c:if>
			            </tr>
					</c:forEach>
          </tbody>
        </table>
      </div>
      
      
  <!-- 페이지네이션 -->    
	<div>
		<ul>
			 <c:choose>
				<c:when test="${ pagination.prevPage >= 1}">
					<li2>
						<a style="color:black;" href="trainerprofilelist?page=${pagination.prevPage}">
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
								<a  style="color:black;"  href="trainerprofilelist?page=${i}">${i} </a>
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


    <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  
<!-- 검토완료하기 누르면 발생 -->
<script>
	function clickConfirm(formName) {
		formName.action = "/trainerprofilecheck";
		formName.method = "post";
		formName.submit();
	}
</script>
<!-- 상담신청 완료하기 누르면 발생 -->
<script>
	function clickConfirmconsulting(formName) {
		formName.action = "/profileconsultingcheck";
		formName.method = "post";
		formName.submit();
	}
</script>


<!-- 검토취소하기 누르면 발생 -->
<script>
	function clickConfirmCancel(formName) {
		formName.action = "/trainerprofilecheckcancel";
		formName.method = "post";
		formName.submit();
	}
	
<!-- 상담요청 취소하기 누르면 발생 -->
function clickConfirmCancelconsulting(formName) {
		formName.action = "/profileconsultingcancel";
		formName.method = "post";
		formName.submit();
	}
</script>
	<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>

	<script src="form-validation.js"></script>  
	
<script>
function allbutton_click() {
	
	console.log("전체버튼을 누르셨습니다.");
	location.href='${path}	/trainerprofilelist';

}
function completebutton_click() {
	console.log("완료버튼을 누르셨습니다.");
	location.href='${path}	/trainerprofilelistcomplete';
}
function waitebutton_click() {
	console.log("대기버튼을 누르셨습니다.");
	location.href='${path}	/trainerprofilelistwaite';
}
</script>	
  </body>
</html>
