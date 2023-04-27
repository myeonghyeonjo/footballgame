<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul class="statistics" style="margin-bottom:-0px;">
									<li class="style1">
										<span class="icon solid fa-code-branch"></span>
										<strong>평일</strong> ${trainerprofile.tf_daymorning } ~  ${trainerprofile.tf_dayafter }
									</li>
									<li class="style2">
										<span class="icon fa-folder-open"></span>
										<strong>토요일</strong> ${trainerprofile.tf_saterdaymorning } ~  ${trainerprofile.tf_saterafter }
									</li>
									<li class="style3">
										<span class="icon solid fa-signal"></span>
										<strong>일요일</strong> ${trainerprofile.tf_sundaymorning } ~  ${trainerprofile.tf_sundayafter }
									</li>
									<li class="style4">
										<span class="icon solid fa-laptop"></span>
										<strong>휴무일</strong> ${trainerprofile.tf_dayoff }
									</li>
									<li class="style5">
										<span class="icon fa-gem"></span>
										<strong>참고사항</strong> ${trainerprofile.tf_lessonintro }
									</li>
								</ul>
</body>
</html>