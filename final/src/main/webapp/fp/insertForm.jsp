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
	<form action="addmember" method="post" >
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
		<th>주소</th>
		<td><input type="text" name="addrs"  /></td>
	</tr>
	
	<tr>
		<th>이메일</th>
		<td><input type="text" name="email" /></td>
	</tr>
	
	<tr>
		<th>성별</th>
		<td><input type="text" name="gender" /></td>
	</tr>
	
	<tr>
		<th>결혼여부</th>
		<td><input type="text" name="marr" /></td>
	</tr>
	
	<tr>
		<th>자녀</th>
		<td><input type="text" name="chi" /></td>
	</tr> 
	<tr>
	<td><input type="hidden" name="${_csrf.parameterName }"
			value="${_csrf.token }" /></td>
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