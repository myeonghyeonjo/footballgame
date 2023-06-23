<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    

     <!-- 기본적으로 CDN링크는 Material+Icons 한개만 제공 -->
  <link href="https://fonts.googleapis.com/
  icon?family=Material+Icons rel="stylesheet">
  <!-- 아래와 같이 | 를 사용하면 여러개의 아이콘을 동시에 불러올 수 있다. -->
    <link href="https://fonts.googleapis.com/
    icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" /> 

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
<!-- 슬라이드 -->
<!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <style>
   footer {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
  
  .footercontainer {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
  }
  
  .footercontainer > div {
    margin: 10px;
  }  
    
    
 .trainer_sumnail , .shadow-sm{
   transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가*/
  
 }   
    .trainer_sumnail:hover {
  transform: scale(1.05);
  -webkit-transform: scale(1.05);
  -moz-transform: scale(1.05);
  -ms-transform: scale(1.05);
  -o-transform: scale(1.05);
}
    .shadow-sm:hover {
  transform: scale(1.05);
  -webkit-transform: scale(1.05);
  -moz-transform: scale(1.05);
  -ms-transform: scale(1.05);
  -o-transform: scale(1.05);
}
span.rightarrow {
  position: absolute;
  top: 50%;
  right: 5px;
  transform: translateY(-50%);
  
}

span.rightarrow:hover {
	cursor : pointer;
}
    
 .swiper-container {


}
.swiper-slide {
	background-color:white;
	border-radius:7px;
	padding:30px;
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
	max-width:100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}  
/* 별 이모지에 마우스 오버 시 */
.starR2:hover {
  text-decoration: underline;
} 
 
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
    width:55%;
    background-color: black;
    border-radius: 30px;
    padding: 10px;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
     caret-color:red;
    line-height: 40px;
    width:90%;
   transition: width 0.4s linear;
     padding: 0 10px;
    }
@media (max-width: 992px){
     .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    width:55%;
    background-color: black;
    border-radius: 30px;
    padding: 10px;
    }
    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
     caret-color:red;
    line-height: 40px;
    width:80%;
   transition: width 0.4s linear;
     padding: 0 10px;
     font-size:15px;
    }
    
}
@media (max-width: 441px){
     .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    width:55%;
    background-color: black;
    border-radius: 30px;
    padding: 10px;
    }
    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
     caret-color:red;
    line-height: 40px;
    width:70%;
   transition: width 0.4s linear;
     padding: 0 10px;
      font-size:12px;
    }
}
@media (max-width: 375px){
   img{
   	width:175px;
   }
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
    
    
.navbar{
	padding:0px;
}
.nav-link{
	pading:10px;
}

.navbar__logo{
	margin-left:2px;
	margin-bottom:10px;
	margin-right:2px;
}
    </style>

    
    
    
  
    
  </head>
  <body>
    
<header>
<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
<style>
   #bannertitle{
	margin-left:0px;
	letter-spacing: 0px;
	word-spacing:0px;
}
li{
	margin-right:2px;
}
#nav-link3{
	margin-right:-2px;
}
.navber__links{
	margin-top:-9px;
}
</style>

</header>

<main>
<sec:authentication property="principal" var="principal"/>
           


  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light" style="color:black;"><Strong>당신의 운동 시작을 응원해요!</Strong></h1>
        <p class="lead text-muted"  style="color:black;"><Strong>내가 신뢰할 수 있는 선생님을 Health Catch에서 찾아보세요</Strong></p>
       
      </div>
    </div>
  </section>





<div class="container h-100">
      <div class="d-flex justify-content-center h-100" style=" ">
        <div class="searchbar" style="">
        	<form action="search_All" method="post">
		        <input id="searchInput" class="search_input" type="text" name="keyword" placeholder="지역,선생님 검색" value="${keyword}" oninput="updateSearchLink()">
				<a id="searchLink" href="" class="search_icon"><i class="fas fa-search"></i></a>
      	</form>
        </div>
      </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="album py-5 bg-light">
    <div class="container">
   

<div class="d-flex align-items-center">
  <span class="material-symbols-outlined" style="font-size:100px; color:#F2BE22">
    exercise
  </span>
  <div>
    <h4 style="color:black; font-weight:bold; font-size:27px;"><strong>Health Catch 트레이너</strong></h4>
    <h4 style="color:black;font-weight:bold; font-size:20px;">언제든, 당신에게 맞는 방식으로</h4>
  </div>
  <div style="margin-left: auto;">
    <select class="form-select" name="tf_certificate" id="reviewselect" style="width:130px; margin-top:50px;" required onchange="handleSelectChange()">
      <option selected>${selectedValue}</option>
      <option value="starhigh">평점순</option>
      <option value="reviewhigh">리뷰순</option>
      <option value="pricelow">가격낮은순</option>
    </select>
  </div>
</div>
  
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">   
       <h4 style="visibility:hidden ">${listempty }</h4>
         <h4 style="color:rgb(0, 128, 255);"><Strong>${listempty }</Strong></h4>
           <h4 style="visibility:hidden ">${listempty }</h4>
   <c:forEach var="filelistAll" items="${filelistAll}" varStatus="status" >

   <c:forEach var="centerfilelistAll" items="${centerfilelistAll}" varStatus="status1">

   <c:forEach var="list" items="${list}" varStatus="status2">   	
         
   <c:forEach var="centernameList" items="${centernameList}" varStatus="status3">   
         
			<c:if test="${status.index == status1.index && status.index == status2.index && status.index == status3.index}">
		
        <div class="col">
          <div class="card shadow-sm" style="border:none; padding:15px;">
         
          <sec:authorize access="hasRole('ROLE_USER')">
          <sec:authentication property="principal" var="principal"/>
          	<a  href="/trainerProfileDetail?u_key=${list.u_key}&memberprofile_u_key=${principal.u_key}"  data-lightbox="example-set">
			 <c:forEach var="trainerprofile_filelistAll" items="${trainerprofile_filelistAll}" varStatus="status4">     
			 		
			 		<c:if test="${trainerprofile_filelistAll.tf_id == list.tf_id }">	
			 		 
						<img style=""src="http://15.164.62.221:8080/static/img/health/img/${trainerprofile_filelistAll.file_name}" width="49%" height="190px"   alt="">
						
						 </c:if>
			</c:forEach></a>		
			</sec:authorize>
			 <sec:authorize access="hasRole('ROLE_ADMIN')">
          <sec:authentication property="principal" var="principal"/>
          	 	<a  href="/trainerProfileDetail?u_key=${list.u_key}&memberprofile_u_key=${principal.u_key}"  data-lightbox="example-set">
			 <c:forEach var="trainerprofile_filelistAll" items="${trainerprofile_filelistAll}" varStatus="status4">     
			 		<c:if test="${trainerprofile_filelistAll.tf_id == list.tf_id }">  				 
						<img style="border-radius: 3%;"src="http://15.164.62.221:8080/static/img/health/img/${trainerprofile_filelistAll.file_name}" width="49%" height="200px"   alt="">
						 </c:if>
			</c:forEach></a>			 
			</sec:authorize>
			 <sec:authorize access="isAnonymous()">
			 	<a  href="/trainerProfileDetail?u_key=${list.u_key}&memberprofile_u_key=0"  data-lightbox="example-set">
			 <c:forEach var="trainerprofile_filelistAll" items="${trainerprofile_filelistAll}" varStatus="status4">     
			 		<c:if test="${trainerprofile_filelistAll.tf_id == list.tf_id }">  	
			 					 
						<img style="border-radius: 3%;"src="http://15.164.62.221:8080/static/img/health/img/${trainerprofile_filelistAll.file_name}" width="49%" height="200px"   alt="">
						 </c:if>
			</c:forEach></a>	
			</sec:authorize>
			
					
            
              <p onclick="location.href='/trainerProfileDetail?u_key=${list.u_key}&memberprofile_u_key=1';"  class="card-text" style="cursor: pointer; margin-bottom:1px; padding:10px; margin-bottom:-10px;color:black;"><Strong>${list.tf_name }선생님
          
			 		 <a class="starR2" href="/trainerProfileDetail_review?u_key=${list.u_key }&memberprofile_u_key=0" style="text-decoration:none; color:black;">
			 		 	
			 		<c:if test="${list.tf_staravarage>=1 && list.tf_staravarage<2}">
							<span class="starR2 on" >⭐(${list.tf_reviewsize})</span>
			 		</c:if>
			 		<c:if test="${list.tf_staravarage>=2 && list.tf_staravarage<3}">
							<span class="starR2 on" >⭐⭐(${list.tf_reviewsize})</span>
			 		</c:if>
			 		<c:if test="${list.tf_staravarage>=3 && list.tf_staravarage<4}">
							<span class="starR2 on" >⭐⭐⭐(${list.tf_reviewsize})</span>
			 		</c:if>
			 		<c:if test="${list.tf_staravarage>=4 && list.tf_staravarage<5}">
							<span class="starR2 on" >⭐⭐⭐⭐(${list.tf_reviewsize})</span>
			 		</c:if>
			 		<c:if test="${list.tf_staravarage==5}">
							<span class="starR2 on" >⭐⭐⭐⭐⭐(${list.tf_reviewsize})</span>
			 		</c:if>
			 		</a>
			 			<c:if test="${list.tf_staravarage==6}">
							(${list.tf_reviewsize})
			 		</c:if>
			 		</Strong></p>
			 		 <div onclick="location.href='/trainerProfileDetail?u_key=${list.u_key}&memberprofile_u_key=1';" style="cursor: pointer; padding:10px;">
              <p class="card-text" style=" margin-bottom:4px;color:black;">"${list.tf_hanjulintro }"</p>
              	<p class="card-text" style="font-size: 13px; margin-bottom:1px; color:black;"><Strong style="color:rgb(208, 2, 27);">${list.tf_lessonnumber }${list.tf_lessonunit }</Strong> 기준 ${list.tf_lessonunit }당 <strong style="color:rgb(208, 2, 27);">${list.tf_lessonprice }원</Strong></p>
                  <p class="card-text" style="font-size: 13px;color:black;">${list.tf_loadaddress }</p>
 
                  </div>
                 <a href="/aj-centerview2?tf_loadaddress=${list.tf_loadaddress }&u_key=${list.u_key}" style="text-decoration:none; margin-top:-10px;"><span class="starR2 on"   style="font-size:13px; margin-left:10px;color:grey; font-weight:bold;">${centernameList }</span></a> 
                   </div>
     
        </div>
            </c:if>
        </c:forEach>
        </c:forEach>
        </c:forEach>
		</c:forEach>
   </div>

			<div style="display:flex; margin-top:100px;">
   			<span class="material-symbols-outlined" style="font-size:100px; color:#F2BE22;">
			reviews
			</span>
			<div>
			<h5 style="color:black; margin-top:10px; font-weight:bold;">합리적인 가격으로 최고의 선생님을 만나세요</h5>
			<h3 style="color:black; font-weight:bold;">Health Catch <Strong style="color:#F2BE22;">실시간</Strong> 후기</h3>	
			</div>
			
			</div>	
		<!-- 클래스명은 변경하면 안 됨 -->
<div class="swiper-container" style="border:none; margin-top:30px; padding:15px;">
	<div class="swiper-wrapper">
					 <c:forEach var="reviewlist_homepage" items="${reviewlist_homepage}" varStatus="status5">     
							 <c:forEach var="reviewlist_trainerprofile_All" items="${reviewlist_trainerprofile_All}" varStatus="status6">    
															 <c:forEach var="reviewlist_trainerprofile_centername_All" items="${reviewlist_trainerprofile_centername_All}" varStatus="status7">    
																							 <c:forEach var="reviewlist_trainerprofile_Img_All" items="${reviewlist_trainerprofile_Img_All}" varStatus="status8">    
								<c:if test="${status5.index == status6.index && status5.index == status8.index  && status5.index  == status7.index &&  status6.index == status7.index }">
	
		<div class="swiper-slide"> 
			
			<p ><Strong style="color:black;">${reviewlist_homepage.memberprofile_name } 회원님</Strong>· <Strong style="color:rgb(0, 128, 255);">${reviewlist_homepage.r_date } </Strong>
			<a class="starR2" href="/trainerProfileDetail_review?u_key=${reviewlist_trainerprofile_All.u_key }&memberprofile_u_key=0" style="text-decoration:none;">
			<Strong class="starR2" style="color:black;">
			<c:if test="${reviewlist_homepage.r_starR==1}">⭐
			</c:if>
			<c:if test="${reviewlist_homepage.r_starR==2}">⭐⭐
			</c:if>
			<c:if test="${reviewlist_homepage.r_starR==3}">⭐⭐⭐
			</c:if>
			<c:if test="${reviewlist_homepage.r_starR==4}">⭐⭐⭐⭐
			</c:if>
			<c:if test="${reviewlist_homepage.r_starR==5}">⭐⭐⭐⭐⭐
			</c:if></Strong></a>
			</p>
			<p style="">${reviewlist_homepage.r_content }<p>
			<div  class="trainer_sumnail" onclick="location.href='/trainerProfileDetail?u_key=${reviewlist_trainerprofile_All.u_key}&memberprofile_u_key=1';"  style="border:none; box-shadow:0 0 5px #ccc inset; border-radius: 50px; height:70px; position: relative; cursor:pointer">
  <img style="border:none; border-radius: 100px; width:70px; height:70px;" src="http://15.164.62.221:8080/static/img/health/img/${reviewlist_trainerprofile_Img_All.file_name}">
  <strong style="color:black;">${reviewlist_trainerprofile_All.tf_name}</strong> <strong style="color:#F2BE22; font-size:13px;">트레이너</strong>
  <strong style="color:grey; font-size:13px;">${reviewlist_trainerprofile_centername_All.c_name}</strong>
<!-- <span class="rightarrow arrowhover" style="font-size:14px; font-weight:bold;color:#F2BE22; margin-right:25px;">트레이너 보기</span>
  <span class="material-symbols-outlined rightarrow" style="color:#F2BE22; font-size:25x;">
 arrow_forward_ios
  </span> -->
</div>
		</div>
		
		
			</c:if>
			</c:forEach>
			</c:forEach>
			</c:forEach>
			</c:forEach>
	</div>

	<!-- 네비게이션 -->

	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->

	<!-- 페이징 
	<div class="swiper-pagination"></div>-->
</div>
        </div>
        </div>
        
</main>

<footer class="text-muted py-5" >
  <div class="container footercontainer"  style="display:flex;">
    						<div style="text-align:left;">
						    <h2 style="color:black;">Health Catch</h2>
						    <p>사업자등록번호 000-00-00000</p>
							<p> 통신판매업신고 : 제 0000-서울마포-0000호 | 대표 : 홍길동</p>
							<p> 주소 : 서울특별시 구로구 디지털로00길 00, 0층 000호</p>
							<p> 고객센터 및 제휴문의 : support@healthcatch.co.kr</p> 
							</div>
							
							<div style="text-align:left;">
							  <h2 style="color:black;">고객센터</h2>
								<dt>Address</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</div>
	</div>
</footer>


    <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

      
  </body>
<script>
new Swiper('.swiper-container', {

	slidesPerView : 2, // 동시에 보여줄 슬라이드 갯수
	spaceBetween : 30, // 슬라이드간 간격
	slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

	// 그룹수가 맞지 않을 경우 빈칸으로 메우기
	// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
	loopFillGroupWithBlank : true,

	loop : true, // 무한 반복

	pagination : { // 페이징
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},
	navigation : { // 네비게이션
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},

});
</script>


<script>
var swiper; // 전역 변수로 Swiper 객체를 선언

function setSwiperOptions() {
    var screenWidth = window.innerWidth; // 현재 창의 너비를 가져옴

    var swiperOptions = {
        slidesPerView: 2,
        spaceBetween: 30,
        slidesPerGroup: 1,
        loopFillGroupWithBlank: true,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        autoplay: {
            delay: 3000, // 슬라이드 간의 딜레이 시간 (ms)
            disableOnInteraction: false, // 사용자 인터랙션 후에도 자동 넘김을 유지할지 여부
        },
    };

    if (screenWidth <= 992) {
        swiperOptions.slidesPerView = 1; // 화면 너비가 992px 이하일 때 슬라이드 개수를 1로 설정
    }

    // 기존에 생성된 Swiper 객체가 있다면 파괴
    if (swiper) {
        swiper.destroy();
    }

    // 새로운 Swiper 객체 생성
    swiper = new Swiper('.swiper-container', swiperOptions);

    // 마우스 호버 시 슬라이드 멈춤
    var swiperContainer = document.querySelector('.swiper-container');
    swiperContainer.addEventListener('mouseenter', function() {
        swiper.autoplay.stop();
    });

    // 마우스 호버 해제 시 슬라이드 재생
    swiperContainer.addEventListener('mouseleave', function() {
        swiper.autoplay.start();
    });
}

// 페이지 로드 후 호출하여 슬라이더 설정을 변경
window.addEventListener('load', function() {
    setSwiperOptions();
});

// 창 크기가 변경될 때마다 슬라이더 설정을 변경
window.addEventListener('resize', function() {
    setSwiperOptions();
});
</script>
<script>
function handleSelectChange() {
	  var selectBox = document.getElementById("reviewselect");
	  var keyword = document.getElementById("keyword").value;
	  var selectedValue = selectBox.options[selectBox.selectedIndex].value;
	  // 선택한 값에 따라 필요한 동작을 수행하도록 구현
	  if (selectedValue === "starhigh") {
	    var url = "/starhigh?keyword=" + encodeURIComponent(keyword)+"&selectedValue="+ encodeURIComponent(selectedValue);
	    window.location.href = url;
	  } else if (selectedValue === "reviewhigh") {
		  var url = "/starhigh?keyword=" + encodeURIComponent(keyword)+"&selectedValue="+ encodeURIComponent(selectedValue);
		    window.location.href = url;
	  } else if (selectedValue === "pricelow") {
		  var url = "/starhigh?keyword=" + encodeURIComponent(keyword)+"&selectedValue="+ encodeURIComponent(selectedValue);
		    window.location.href = url;
	  }
	}
	
function updateSearchLink() {
    var searchInput = document.getElementById('searchInput');
    var searchLink = document.getElementById('searchLink');
    var keyword = searchInput.value;
    searchLink.href = "search_All?keyword=" + encodeURIComponent(keyword);
}
</script>
</html>