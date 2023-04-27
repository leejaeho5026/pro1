<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dto.Student" %>
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
	Student s1 = (Student) request.getAttribute("s1");
	
	
	ArrayList<String> lst1 =(ArrayList<String>) request.getAttribute("lst1");
	String lst12 = (String) request.getAttribute("lst12");

	HashSet<String> lst2 =(HashSet<String>) request.getAttribute("lst2");
	
	HashMap<String, String> map = (HashMap<String, String>) request.getAttribute("map");
	String map2 = (String) request.getAttribute("map2");

	
	%>
<div class="msg">
	<h1 class="title">자바 객체 데이터를 받습니다.</h1>
	<hr>
	<h2 class="title">lst1 리스트 객체를 받아서 출력 </h2>
	<ul>
<%
	for(int i=0; i<lst1.size(); i++){
		
	}
%>
	<li><%=lst1.get(i) %></li>
	</ul>
	
	<hr><br>
	<h2 class="title">map 맵 객체를 받아서 키만 출력</h2>
	<u1>
<%
	Set<String> keys = map.keySet();
	for(String key : keys){
%>
		<li><%=key %></li>
<%
	}
%>
	</u1>
	<hr><br>
	<h2 class="title">map 맵 객체를 받아서 값만 출력</h2>
	<ul>
<%
	Collection<String> val = map.values();
	for(String name : val){
%>
		<li><%=name %></li>
<%
	}
%>
	
	</ul>
	<hr><br>
	<h2 class="title"> map 맵 객체를 받아서 키와 값을 모두 출력</h2>
	<ul>
<%
	Set<Map.Entry<String, String>> entrySet = map.entrySet();
	for(Map.Entry<String, String> entry : entrySet) {
%>
	<li>
		키: <span><%=entry.getKey() %></span>,
		값: <span><%=entry.getValue() %></span>
	</li>
<%
	}
%>
	</ul>
	<hr><br>
<%
	Student s1 = (Student) request.getAttribute("s1");
	String lst12 = (String) request.getAttribute("lst12");
%>
	<h2 class="title">특정 객체의 값을 출력</h2>
	<ul>
		<li><%=s1.sno %></li>
		<li><%=s1.sname %></li>
		<li><%=s1.point %></li>
		<li><%=lst12 %>
	</ul>
</div>
</body>
</html>