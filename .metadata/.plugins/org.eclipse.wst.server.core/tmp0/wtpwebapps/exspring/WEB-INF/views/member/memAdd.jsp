<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/views/com/menu.jsp" %> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<h1>회원가입</h1>
	<form:form modelAttribute="memberVo" enctype="multipart/form-data" action="${pageContext.request.contextPath}/member/add.do" method="POST">
	    ID : <form:input path="memId"/><br />
		PASSWROD : <form:password path="memPass"/> <br />
		NAME : <form:input path="memName"/> <br />
		POINT: <form:input path="memPoint"/><br />
		PHOTO: <input type="file" name="uploadImgList" /><br />
		<input type="submit" />
	</form:form>
	<form enctype="multipart/form-data" action="${pageContext.request.contextPath}/member/add.do" method="POST">
		ID : <input type="text" name="memId" /> <br />
		PASSWROD : <input type="password" name="memPass" /> <br />
		NAME : <input type="text" name="memName" /> <br />
		POINT: <input type="text" name="memPoint" /><br />
		PHOTO: <input type="file" name="uploadImgList" /><br />
		<input type="submit" />
	</form>
	<a href="${pageContext.request.contextPath}/member/list.do">회원목록</a>
</body>
</html>