<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/sample?serverTimezone=Asia/Seoul";
	String user = "root";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from test1";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이에스큐엘 데이터베이스 테이블 목록보기</title>
<style>

</style>
</head>
<body>
	<h2>회원목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>아이디</th><th>비밀번호</th><th>이름</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){ 	
							String d1 = rs.getString("pw").substring(0, 1);
%>
			<tr>
				<td><%=rs.getString("id") %></td><td><%=d1 %>***</td>
				<td><%=rs.getString("name") %></td>
			</tr>
<%						}   %>	
		</tbody>
	</table>
</body>
</html>
<%
				rs.close();
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				System.out.println("SQL 전송 실패");
			}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>