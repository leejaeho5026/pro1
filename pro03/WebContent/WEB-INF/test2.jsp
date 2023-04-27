<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
class Student {
	public int sno;
	public String sname;
	public int point;
}
%>
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>JAVA 객체 제어</title>
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
<%
	Student s1 = new Student();
	s1.sno = 1;
	s1.sname = "이재호";
	s1.point = 100;
	request.setAttribute("s1", s1);
	ArrayList<String> lst1 = new ArrayList<>();
	lst1.add("호호호");
	lst1.add("하하하");
	lst1.add("히히히");
	lst1.add("호호홍");
	request.setAttribute("lst1",lst1); //리시트를 한 꺼번에 request객체에 담기
	
	HashSet<String> lst2 = new HashSet<>();
	lst2.add("키키키");
	lst2.add("캬캬캬");
	request.setAttribute("lst2",lst2);
	
	HashMap<String, String> map = new HashMap<>();
	map.put("t1","후후후");
	map.put("t2","흐흐흐");
	
	request.set
	
	
	
	%>
<div class="msg">
	<h1>pageContext</h1>


</body>
</html>