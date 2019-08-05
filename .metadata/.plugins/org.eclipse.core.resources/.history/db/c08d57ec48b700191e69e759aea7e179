<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/com/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<h1>상품 수정</h1>
	<form action="${pageContext.request.contextPath}/product/edit.do" method="POST">
		<input type="hidden" name="prodNo" value="${productVo.prodNo}"/><br />
		상품 이름 : <input type="text" name="prodName" value="${productVo.prodName}"/> <br />
		상품 가격: <input type="text" name="prodPrice" value="${productVo.prodPrice}" /><br />
		<input type="submit" />
	</form>
	<a href="${pageContext.request.contextPath}/product/del.do?prodNo=${productVo.prodNo}">
	<input type="button" value="삭제"/></a>
</body>
</html>