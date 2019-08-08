<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원목록</h1>
	<form id="sform" action="${pageContext.request.contextPath}/member/list.do">
		<select name="searchType">
			<option value="memId" ${searchInfo.searchType == 'memId'? 'selected' : ''}>아이디</option>
			<option value="memName" ${searchInfo.searchType == 'memName'? 'selected' : ''}>이름</option>
			<option value="total" ${searchInfo.searchType == 'total'? 'selected' : ''}>아이디+이름</option>
		</select> 
		<input type="text" name="searchWord" value="${searchInfo.searchWord}" /> 
		<input type="hidden" name="page" value="1" /> 
		<input type="submit" value="검색" />
	</form>

	<script>
		if ('${searchInfo.searchType}')
			document.querySelector('[name="searchType"]').value = ${searchInfo.searchType};
	</script>

	<c:forEach items="${memberList}" var="vo">
		<c:if test="${loginUser.memId == vo.memId}">
			<a href="${pageContext.request.contextPath}/member/edit.do?memId=${vo.memId}">${vo.memId}</a>: ${vo.memName} <br />
		</c:if>
		<c:if test="${loginUser.memId != vo.memId}"> ${vo.memId}
	</c:if>
	: ${vo.memName} <br />
	</c:forEach>
	${searchInfo.pageHtml}
	<hr />
	<a href="${pageContext.request.contextPath}/member/add.do">회원가입</a>
	<script>
		function goPage(no) {
			document.querySelector('[name="page"]').value = no;
			document.querySelector('#sform').submit();
		}
	</script>
</body>
</html>