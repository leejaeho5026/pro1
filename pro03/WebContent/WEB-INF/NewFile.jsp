<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>테스트1 시작 페이지 - test1_data.jsp</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.title {text-align:center;}
#tbl, .msg {width:600px; margin:0 auto;}
</style>
</head>


<body>
<div class="msg">
	<nav class="nav">
		<a href="test1.jsp?str=include" class="btn btn-primary"> include 테스트</a>
		<a href="test1.jsp?str=forward" class="btn btn-primary"> forward 테스트</a>
	</nav>

</div>
</body>
</html>