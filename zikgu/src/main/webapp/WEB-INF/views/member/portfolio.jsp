<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>myeonghyeon jo portfolio</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../../resources/static/css/styles.css" rel="stylesheet" />
        
        <!-- 슬라이드 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    </head>
    <style>
    
    </style>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">Start Bootstrap</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#services">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about">Skills</a></li>
                        <li class="nav-item"><a class="nav-link" href="#PROJECTS">Project</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead"  style="background-color:blue;">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">-조명현-</h1>
                          <h1 class="text-white font-weight-bold">웹 개발자 포트폴리오</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">안녕하세요.</p>
                          <p class="text-white-75 mb-5" style="margin-top:-50px;">조명현의 포트폴리오에 오신것을 환영합니다.</p>
                        <a class="btn btn-primary btn-xl" href="#services">더 알아보기 ↓</a>
                    </div>
                </div>
            </div>
        </header>

        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container px-4 px-lg-5">
                <h1 class="text-center mt-0" style="font-size:50px;font-weight:bold; text-decoration:underline; ">ABOUT ME</h1>

                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;"class="material-symbols-outlined">person</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"><Strong>이름</Strong></h3>
                            <p class="text-muted mb-0">조명현</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px; "class="material-symbols-outlined">calendar_month</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"><Strong>생년월일</Strong></h3>
                            <p class="text-muted mb-0">1997.03.05</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;"class="material-symbols-outlined">call</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"><Strong>연락처</Strong></h3>
                            <p class="text-muted mb-0">010-3002-7241</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;	text-align:left;padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;"class="material-symbols-outlined">mail</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"><Strong>이메일</Strong></h3>
                            <p class="text-muted mb-0">159qjtm@naver.com</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;	text-align:left;padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;"class="material-symbols-outlined">school</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"><Strong >학력</Strong></h3>
                            <p class="text-muted mb-0">금오공과대학교(컴퓨터공학부)</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  <!-- About-->
        <section class="page-section" id="about" style="background-color:#CED3DC;" >
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h1 style="font-size:60px;"class="text-black mt-0"><Strong>SKILLS</Strong></h1>
                        <p class="text-black mt-0">현재까지 배우고 사용 해봤던 기술입니다.</p>
                       
                    </div>
                </div>
            </div>
             <div class="container px-4 px-lg-5">
                       <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;font-color:#DDE6ED"class=" material-symbols-outlined">adjust</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"style="color:#27374D"><Strong>Language</Strong></h3>
                            <p class="  text-blue mb-0">JAVA</p>
                              <p class="  text-blue mb-0">SQL</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;font-color:#DDE6ED"class=" material-symbols-outlined">adjust</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"style="color:#27374D"><Strong>FrontEnd</Strong></h3>
                            <p class="  text-blue mb-0">HTML5</p>
                             <p class="  text-blue mb-0">CSS</p>
                              <p class="  text-blue mb-0">JavaScript(jquery)</p>
                               <p class="  text-blue mb-0">BootStrap</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;font-color:#DDE6ED"class="material-symbols-outlined">adjust</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"style="color:#27374D"><Strong>BackEnd</Strong></h3>
                            <p class="  text-blue mb-0">Spring</p>
                             <p class="  text-blue mb-0">JSP/JSTL</p>
                             <p class="  text-blue mb-0">GIT</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;font-color:#DDE6ED"class=" material-symbols-outlined">adjust</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2"style="color:#27374D"><Strong>DataBase(DB)</Strong></h3>
                            <p class="  text-blue mb-0">MariaDB</p>
                              <p class="  text-blue mb-0">MsSql</p>
                                  <p class="  text-blue mb-0">MyBatis</p>
                              
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;font-color:#DDE6ED"class="material-symbols-outlined">adjust</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2" style="color:#27374D"><Strong>Cloud</Strong></h3>
                            <p class="  text-blue mb-0">Amazon Web Services</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5" style="display:flex;text-align:left;	padding:40px;">
                            <div class="mb-2"><span style="font-size:45px; margin-right:15px;font-color:#DDE6ED"class="material-symbols-outlined">adjust</span>
                            </div>
                            <div>
                            <h3 class="h4 mb-2" style="color:#27374D"><Strong>Tool</Strong></h3>
                            <p class="  text-blue mb-0">STS(Spring-tool-suite)</p>
                            <p class="  text-blue mb-0">Visual Studio</p>
                            <p class="  text-blue mb-0">Visual Studio Code</p>
                            <p class="  text-blue mb-0">Git</p>
                            <p class="  text-blue mb-0">Github</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        <!-- Call to action-->
    <section class="page-section text-black" id="PROJECTS" style="background-color:#34B3F1;">
    <div class="container px-4 px-lg-5 text-center">
        <h1 class="mb-4" style="color:white; font-size:50px;font-weight:bold;text-decoration-line: underline;
  text-decoration-color: white;">PROJECTS</h1>
        <div style="border-radius:20px;background-color:white; display: flex; flex-direction: column;" id="3">
            <h1 style="text-align:center; margin-top:50px; margin-bottom:0px;">Health Catch</h1>
            <Strong>(개인프로젝트)</Strong>
            <hr style="padding:10px;">
            <div style="flex: 1; display: flex;">
                <div style="height: 500px; width: 50%;" id="1">
                  <!-- 클래스명은 변경하면 안 됨 -->
<div class="swiper-container" style="margin-left:50px;">
	<div class="swiper-wrapper">
		<div class="swiper-slide"><img src="../../../resources/static/img/health catch1.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/health catch2.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/health catch3.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/health catch4.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/health catch5.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/health catch6.JPG"></div>
	</div>

	<!-- 네비게이션 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->

	<!-- 페이징 -->
	<div class="swiper-pagination"></div>
</div>
                </div>
                <div style="height: 450px; width: 50%; text-align:left; padding:60px; margin-top:-40px;" id="2" >
                <p><Strong>내가 받을 PT 트레이너를 보다 쉽게 찾고자 도와주는 웹사이트입니다.</Strong></p>
          			<p>
                    헬스를 즐기는 사람의 입장으로서 PT를 받을 때 트레이너를 선택함에 있어서 많음 어려움이 있었습니다. 어떤 트레이너 선생님이 나에게 적합한지, 그리고 가격은 얼마나 합리적인지, 등 PT를 받기위해 고려해야 할 점들은 정말 많습니다.
                    그래서 저와 같은 사람들에게 도움이 되고자하는 마음으로 개발했습니다.
                </p>
                <hr />
                <div style="display:flex;">
                <p style="margin-right:65px; font-size:22px;"><Strong>Github</Strong></p>
                <p style="margin-top:3px;"><a href="https://github.com/myeonghyeonjo/footballgame" style="text-decoration:none; color:blue;">CLick to repository</a></p>
                </div>
                  <div style="display:flex;">
                <p style="margin-right:75px; font-size:22px;"><Strong>Demo</Strong></p>
                <p style="margin-top:3px;"><a href="http://healthcatch.net:8080/" style="text-decoration:none; color:blue;">CLick to demopage</a></p>
                </div>
                   <div style="display:flex;">
                <p style="margin-right:90px; font-size:22px;"><Strong>사용기술</Strong></p>
                <div><p style="margin-top:3px; margin-bottom:-5px;">Html Css Javasciprt</p>
                <p style="margin-top:3px; margin-bottom:-5px;">Bootstrap, jquery, JAVA</p>
                <p style="margin-top:3px;">AWS (Lightsail, Route 53), KAKAO API , Spring boot, Mysql</p>
                </div>
                </div>
                </div>
             	   </div>    
             	      
            </div>
              <div style="border-radius:20px;background-color:white; margin-top:50px; display: flex; flex-direction: column;" id="3">
            <h1 style="text-align:center; margin-top:50px; margin-bottom:30px;">Compat EIS</h1>
                <Strong>(팀프로젝트)</Strong>
            <hr style="padding:10px;">
            <div style="flex: 1; display: flex;">
                <div style="height: 450px; width: 50%;" id="1">
                  <!-- 클래스명은 변경하면 안 됨 -->
<div class="swiper-container" style="margin-left:50px;">
	<div class="swiper-wrapper">
		<div class="swiper-slide"><img src="../../../resources/static/img/uniever1.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/uniever6.JPG"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/uniever3.png"></div>
		<div class="swiper-slide"><img src="../../../resources/static/img/uniever4.png"></div>
	
	</div>

	<!-- 네비게이션 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->

	<!-- 페이징 -->
	<div class="swiper-pagination"></div>
</div>
                </div>
                <div style="height: 400px; width: 50%; text-align:left; padding:60px; margin-top:-40px;" id="2" >
                <p><Strong>회사의 데이터를 가공해서 시각화하여 표현한 대시보드사이트입니다.</Strong></p>
          			<p>
                   	교육과정중 기업의 멘토님과 함께한 프로젝트입니다. 프론트에 중점을 둔 프로젝트이며 웹사이트의 디자인 ,칼라조합, 배치 등을 신경써서 만들었습니다.
                   	
                </p>
                <hr />
                <div style="display:flex;">
                <p style="margin-right:100px; font-size:22px;"><Strong>Github</Strong></p>
                <p style="margin-top:3px;"><a href="https://github.com/EIS-Uniever/EIS" style="text-decoration:none; color:blue;">CLick to repository</a></p>
                </div>
                  <div style="display:flex;">
                <p style="margin-right:110px; font-size:22px;"><Strong>Demo</Strong></p>
                <p style="margin-top:3px;"><a href="http://study.uniever.co.kr:8080/" style="text-decoration:none; color:blue;">CLick to demopage</a></p>
                </div>
                    <div style="display:flex;">
                <p style="margin-right:90px; font-size:22px;"><Strong>사용기술</Strong></p>
                <div><p style="margin-top:3px; margin-bottom:-5px;">Html, Css, Javasciprt</p>
                <p style="margin-top:3px; margin-bottom:-5px;">JSP, Bootstrap, jquery</p>
                <p style="margin-top:3px; margin-bottom:-5px;">Riamore,Mssql, Spring boot</p>
                </div>
                </div>
                </div>
             	   </div>    
             	      
            </div>
        </div>
    </div>
</section>





        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2023 - Company Name</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script>
        new Swiper('.swiper-container', {

        	slidesPerView : 1, // 동시에 보여줄 슬라이드 갯수
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
    </body>
    <
</html>
