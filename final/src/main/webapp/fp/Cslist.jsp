<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
	

		<sec:authorize access="isAuthenticated()">
			<form action="<c:url value='/Logout' />" method="post">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
			<input type="submit" value="로그아웃" />	
			</form>
		</sec:authorize>


		<table class="table text-center">
			<tr>
				<td colspan="5"><a href="CsinsertForm">글쓰기</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>닉네임</th>
				<th>제목</th>
				<th>작성일시</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.csno}</td>
					<td>${dto1.nickname}</td>
					<td><a href="Csdetail?csno=${dto.csno}">${dto.cstitle}</a></td>
					<td>${dto.csrepdate}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5"><c:if test="${prev}">
						<a href="Cslist?currentPageNo=${currentPageNo-5 }"><button>[이전]</button></a>
					</c:if> <c:forEach var="no" begin="${startpageNo}" end="${endpageNo }">
						<a href="Cslist?currentPageNo=${no}"><button>${no}</button></a>
					</c:forEach> <c:if test="${next}">
						<a href="Cslist?currentPageNo=${currentPageNo+5 }"><button>[다음]</button></a>
					</c:if></td>
			</tr>
		</table>


	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>