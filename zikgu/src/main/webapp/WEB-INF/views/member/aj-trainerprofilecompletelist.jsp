<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
          <tbody>
		        <c:forEach var="list" items="${list }">
		           		<tr onclick="location.href='reviewDetail?r_id=${list.tf_name }'" style="cursor:pointer">
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
</body>
</html>