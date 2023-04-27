<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오라클 수강 정보 등록하기</title>
<style>
</style>
</head>
<body>
	<nav>
		<a href="index.jsp">메인으로</a>
		<a href="oracleWebList.jsp">수강생 목록</a>
	</nav>
	<hr>
	<h2>수강 정보 등록</h2>
	<hr>
	<form action="oracleInsertPro.jsp" method="post">
		<label for="c_no">수강코드</label> :
		<input type="text" name="c_no" id="c_no" required>
		<input type="button" value="중복확인" id="confirm_btn">
		<br><br>
		<label for="c_name">이름</label> :
		<input type="text" name="c_name" id="c_name" required><br><br>
		<label for="phone">연락처</label> :
		<input type="tel" name="phone" id="phone" required><br><br>
		<label for="address">주소</label> :
		<input type="text" name="address" id="address" required><br><br>
		<label for="regist_date">등록일</label> :
		<input type="text" name="regist_date" id="regist_date" required><br><br>
		<label>타입</label> :
		<input type="radio" name="c_type" value="일반" checked> 일반
		<input type="radio" name="c_type" value="VIP"> VIP<br><br><br>
		<input type="submit" value="수강 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>