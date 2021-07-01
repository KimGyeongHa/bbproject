<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>사용자 정의형 로그인 페이지</h1>

	<h2><c:url value="${error }"></c:url></h2>	
	<h2><c:url value="${logout }"></c:url></h2>
	
	<!-- spring security : CSRF 공격을 막기위해 랜덤토큰 인증방식을제공 -->
	
	
	<form action="<c:url value='/login' />" method="post">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" id="" /></td>
		</tr>
		
		<tr>
			<th>패스워드</th>
			<td><input type="text" name="pw" id="" />
			
			<input type="hidden" name="${_csrf.parameterName }"
			value="${_csrf.token }" />
			
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인" />
			</td>
		</tr>		
	</table>
	</form>	
</body>
</html>