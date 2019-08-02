<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ include file="/WEB-INF/views/com/menu.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원목록</h1>
	<c:forEach items="${memberList}" var="vo">
	<c:if test="${loginUser.memId == vo.memId}">
		<a href="${pageContext.request.contextPath}/member/edit.do?memId=${vo.memId}">${vo.memId}</a>: ${vo.memName} <br />
	</c:if>
	<c:if test="${loginUser.memId != vo.memId}">
	${vo.memId}
	</c:if>
	: ${vo.memName} <br />
	</c:forEach>
	<hr />
	<a href="${pageContext.request.contextPath}/member/add.do">회원가입</a>
</body>
</html>