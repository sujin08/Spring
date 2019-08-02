<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/com/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>상품 추가</h1>
	<form action="${pageContext.request.contextPath}/product/add.do" method="POST">
		상품 이름 :<input type="text" name="prodName" /> <br />
		상품 가격: <input type="text" name="prodPrice" /><br />
		<input type="submit" />
	</form>
	<a href="${pageContext.request.contextPath}/product/list.do">상품목록</a>
</body>
</html>