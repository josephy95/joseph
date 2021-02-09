<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Project detail</h1>

<c:forEach var="item" items="${list}"> 
  <tr>
    <td>${item.proId}</td>
    <td>${item.proTitle}</td>
    <td>${item.proBody}</td>
    <td>${item.proDate}</td>
    <td><a href="${path}/projectUpdateForm.do?proId=${item.proId}">수정</a></td>
    <td><a href="${path}/projectDelete.do?proId=${item.proId}">삭제</a></td>
  </tr>
</c:forEach>

</body>
</html>