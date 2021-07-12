<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<table class="table">
		<tr>
			<th>번호</th>
			<td>${dto.csno}</td>
			<th>작성일시</th>
			<td>${dto.csrepdate}</td>
		</tr>
	
		<tr>
			<th>작성자</th>
			<td>${dto1.nickname}</td>
			<th>제목</th>
			<td>${dto.cstitle}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3">${dto.cscontents }</td>
		</tr>
		
		<tr>
			<th>이미지</th>
			<td rowspan="3"><img src="${dto.csimg}" alt="" /></td>
		</tr>
		
		<tr>
			<td colspan="4">
			<input type="button" value="목록" />
			<a href="Csmodify?csno=${dto.csno}"><input type="button" value="수정" /></a>
			<a href="Csdelete?bno=${dto.csno }"><input type="button" value="삭제" /></a>
			</td>
		</tr>
		</table>
	</div>



</body>
</html>