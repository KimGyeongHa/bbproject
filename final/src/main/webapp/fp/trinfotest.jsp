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

	<h1>TRINFO INSERT TEST</h1>
	<form:form method="post" action="trinfotest?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
		
	
		<table>
			<tr>
				<th>카테고리타입</th>
				<td><select name="type">
						<option value="1">봄</option>
						<option value="2">여름</option>
						<option value="3">가을</option>
						<option value="4">겨울</option>
						<option value="5">여행지추천</option>

				</select></td>
			</tr>
			
			<tr>
				<th>위치</th>
				<td><input type="text" name="loc" value="서울" /></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="trtitle" value="1번" /></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="adrs" value="경기도 시흥시" /></td>
			</tr>

			<tr>
				<th>상세정보</th>
				<td><textarea rows="10" cols="30" name="trdetail"></textarea></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="hp" value="01055555555" /></td>
			</tr>
			<tr>
				<th>이용시간</th>
				<td><input type="text" name="time" value="폐업" /></td>
			</tr>


			<tr>
				<th>메인이미지</th>
				<td><input type="file" name="file" id="" /></td>
				<form:errors path="file" />
			</tr>

			<tr>
				<th>이용가격</th>
				<td><input type="text" name="cost" value="비쌈" /></td>
			</tr>

			<tr>
				<th>주차시설</th>
				<td><input type="text" name="park" value="가능" /></td>
			</tr>

			<tr>
				<th>문의</th>
				<td><input type="text" name="inqu" value="홈페이지주소" /></td>
			</tr>

			<tr>
				<th>편의시설</th>
				<td><input type="text" name="conv" value="500m앞cu" /></td>
			</tr>
			<tr>
				<th>휴무일</th>
				<td><input type="text" name="holi" value="20일" /></td>
			</tr>
			<tr>
				<th>기타특이사항</th>
				<td><input type="text" name="etc" value="엄청기네" /></td>
			</tr>
			<tr>
			<td><input type="hidden" value="${dto.mno}" name="mno" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="등록" /> <input
					type="reset" value="초기화" /></td>
			</tr>
			<tr>
		</table>
	</form:form>



</body>
</html>