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
              <th scope="col">��ȣ</th>
              <th scope="col">ȸ����</th>
              <th scope="col">������</th>
              <th scope="col">�����ȣ</th>  
               <th scope="col">����</th>
              <th scope="col">����</th>  
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
				                <c:if test="${(list.tf_check=='�Ϸ�')}">
						 			  <td style="color:green;">�Ϸ�</td>
						  		</c:if>
						  		 <c:if test="${(list.tf_check=='���')}">
						 			  <td style="color:red;">���</td>
						  		</c:if>
			            </tr>
					</c:forEach>
          </tbody>
        </table>
</body>
</html>