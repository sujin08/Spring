<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/views/com/menu.jsp"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상세 보기</h1>
	<form action="${pageContext.request.contextPath}/board/edit.do" method="post">
		<input type="hidden" name="bbsNo" value="${boardVo.bbsNo}" />
		<table>
			<tbody>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bbsTitle" value="${boardVo.bbsTitle}" disabled="${loginUser.memId != boardVo.bbsWriter ? 'disabled' : ''}" /> <br /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="bbsWriter" value="${boardVo.bbsWriter}" disabled="disabled" /> <br /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="20" cols="80" name="bbsContent" disabled="${loginUser.memId != boardVo.bbsWriter ? 'disabled' : ''}">${boardVo.bbsContent}</textarea></td>
				</tr>
					<c:forEach var="avo" items="${boardVo.attList}" varStatus="no">
				    <tr><td>첨부파일 ${no.count}</td><td><a href="${pageContext.request.contextPath}/board/down.do?attNo=${avo.attNo}">${avo.attOrgname}</a></td></tr>
					</c:forEach>
				
				
			</tbody>
		</table>
		<c:if test="${loginUser.memId == boardVo.bbsWriter}">
			<input type="submit" value="수정" />
			<a href="${pageContext.request.contextPath}/board/del.do?bbsNo=${boardVo.bbsNo}"><input type="button" value="삭제" /></a>
		</c:if>
			<a href="${pageContext.request.contextPath}/board/list.do"><input type="button" value="목록" /></a>
	</form>
</body>
</html>