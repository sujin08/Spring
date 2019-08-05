<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품목록</h1>
	<c:forEach items="${selectlist}" var="vo">
		${vo.prodNo} : <a href="${pageContext.request.contextPath}/product/edit.do?prodNo=${vo.prodNo}">${vo.prodName}</a>: ${vo.prodPrice} <br />
	</c:forEach>
	<a href="${pageContext.request.contextPath}/product/add.do">상품추가</a>
</body>
</html>