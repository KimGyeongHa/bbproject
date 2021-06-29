<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>	
	<form action="addmember" method="post">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" /></td>
		</tr>
	<tr>
		<th>비번</th>
		<td><input type="text" name="pw" /></td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" /></td>
	</tr>
	
	<tr>
		<th>생년월일</th>
		<td><input type="text" name="birth"  /></td>
	</tr>
	
	<tr>
		<th>핸드폰</th>
		<td><input type="text" name="pn" /></td>
	</tr>
	
	
	<tr>
		<th>닉네임</th>
		<td><input type="text" name="nickname" /></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="button" value="목록" />
			<input type="submit" value="저장" />
		</td>
	</tr>

	</table>
	</form>
</div>
</html>