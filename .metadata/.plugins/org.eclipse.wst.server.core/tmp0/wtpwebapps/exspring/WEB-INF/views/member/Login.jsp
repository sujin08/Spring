<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="${pageContext.request.contextPath}/member/login.do" method="POST">
		ID : <input type="text" name="memId" /> <br />
		PASSWROD : <input type="password" name="memPass" /> <br />
		<input type="submit" value="록인"/>
	</form>
	<a href="${pageContext.request.contextPath}/member/add.do">회원가입</a>
</body>
</html>