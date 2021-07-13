<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정페이지</title>
</head>
<body>
<form action="Csmodify" method="post">
	<table class="table">
		<tr>
			<th>번호</th>
			<td>${dto.csno}
			<input type="hidden" name="csno" value="${dto.csno}" />
			</td>
			<th>작성일시</th>
			<td>${dto.csrepdate}</td>
		</tr>
	 
		<tr>
			<th>작성자</th>
			<td>${dto1.nickname}</td>
		</tr>
			
		<tr> 
			<th>제목</th>
			<td colspan="3"><input type="text" name="cstitle" value="${dto.cstitle}" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3">
			<textarea name="cscontents" rows="10" cols="80">${dto.cscontents}</textarea>
			</td>
		</tr>
		
			<tr>
			<td colspan="4">
			<input type="submit" value="수정" />
			<a href="Cslist"><input type="button" value="목록" /></a>
			</td>
			</tr>
		</table>
		</form>

</body>
</html>