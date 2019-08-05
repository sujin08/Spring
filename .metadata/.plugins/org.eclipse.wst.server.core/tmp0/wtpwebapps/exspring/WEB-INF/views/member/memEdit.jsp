<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<h1>회원수정</h1>
	<form action="${pageContext.request.contextPath}/member/edit.do" method="POST">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="memId" value="${Membervo.memId}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>PASSWROD</td>
				<td><input type="text" name="memPass" value="${Membervo.memPass}" /></td>
			</tr>
			<tr>
				<td>NAME</td>
				<td><input type="text" name="memName" value="${Membervo.memName}" /></td>
			</tr>
			<tr>
				<td>POINT</td>
				<td><input type="text" name="memPoint" value="${Membervo.memPoint}" /></td>
			</tr>
			<tr>
				<td>PHOTO</td>
				<c:choose> 
				<c:when test="${Membervo.memImg != null}">
				<td><img src="${pageContext.request.contextPath}/member/down.do?memId=${Membervo.memId}"></td>
				</c:when>
				<c:otherwise>
				<td><img src="${pageContext.request.contextPath}/resources/img/user.png"></td>
				</c:otherwise>
				</c:choose>
			</tr>
		</table>
		<input type="submit" value="저장" /> <a href="${pageContext.request.contextPath}/member/list.do"> <input type="button" value="치소" /></a> <a href="${pageContext.request.contextPath}/member/del.do?memId=${Membervo.memId}"> <input type="button" value="t샂" /></a>
	</form>
</body>
</html>