<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">	
	<form:form method="post" action="CsinsertForm?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
	<table>
	<tr>
		<td><input type="hidden" value="${dto1.mno}" name="mno" /></td>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type="text" name="cstitle" /></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><textarea name="cscontents" id="" cols="30" rows="10"></textarea></td>
	</tr>
	

	<tr>
		<th>이미지첨부</th>
		<td><input type="file" name="file" id="" /></td>
		<form:errors path="file" />
	</tr>

	
	
	
	<tr>
		<td colspan="2">
			<input type="button" value="목록" />
			<input type="submit" value="저장" />
		</td>
	</tr>

	</table>
	</form:form>
</div>


</body>
</html>