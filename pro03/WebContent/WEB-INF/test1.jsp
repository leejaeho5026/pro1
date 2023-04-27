<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>Insert title here</title>
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
	<h1>pageContext</h1>
<%
	String str = request.getParameter("str"); // test1_data.jsp?str=
	if(str.equals("include")){
		pageContext.include("target.jsp"); //현재 페이지에 target.jsp의 내용을 인클루드	
	}else if(str.equals("forward")){
		pageContext.forward("target.jsp"); //현재 페이지에 target.jsp의 내용을 전송
	} else {
		out.println("<h2>잘못된 값</h2>");
	}
%>
</div>
</body>
</html>