<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>Insert title here</title>
</head>
<body>
<div class="msg">
	<h1 class="title"> JSP의 Scope Response</h1>
	<%
		String pg = (String) pageContext.getAttribute("pageData");
		String req = (String) request.getAttribute("requestData");
		String ses = (String) session.getAttribute("sessionData");
		String app = (String) application.getAttribute("applicationData");
		String msg = request.getParameter("msg");
			
	%>
	<h2>Scope 데이터 출력</h2>
	<ul>
		<li>pageContext : <%=pg %></li>
		<li>request : <%=req %></li>
		<li>session : <%=ses %></li>
		<li>application : <%=app %></li>
		<li>msq : <%=msg %></li>
	
	</ul>
	<a href="test6.jsp" class="btn btn-primary">이동하기</a>
	<a href="logout.jsp" class="btn btn-primary">로그아웃</a>
</div>
</body>
</html>