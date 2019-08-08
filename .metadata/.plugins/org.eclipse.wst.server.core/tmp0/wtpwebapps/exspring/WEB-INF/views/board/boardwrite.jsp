<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글쓰기</h1>
	<form enctype="multipart/form-data" action="${pageContext.request.contextPath}/board/write.do" method="post">
	<table>
	<tbody>
	<tr><td>제목</td><td><input type="text" name="bbsTitle"/> <br /></td></tr>
<%-- 	<tr><td>작성자</td><td><input type="text" name="bbsWriter" value="${loginUser.memId}"/> <br /></td></tr> --%>
	<tr><td>내용</td><td><textarea rows="20" cols ="200" name="bbsContent"></textarea></td></tr>
	<tr><td>첨부파일1</td><td><input type="file" name="uploadList"/> <br /></td></tr>
	<tr><td>첨부파일2</td><td><input type="file" name="uploadList"/> <br /></td></tr>
	</tbody>
	</table>
	<input type="submit" />
	<a href="${pageContext.request.contextPath}/board/list.do"><input type="button" value="목록"/></a>
	</form>
</body>
</html>