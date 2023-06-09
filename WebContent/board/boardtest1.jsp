<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");	
%>


<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from public.board";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
				
				rs.close();
				pstmt.close();
				conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>데이터베이스 테이블 목록 테스트</title>
<style>
table { display:table; width:600px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333;
text-align:center; line-height:36px; }
th { background-color:#333; color:#fff; }
</style>
</head>
<body>
	<h2>게시판 목록</h2>
	<hr>
	<nav>
		<a href="../index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>글번호</th><th>작성자</th><th>제목</th><th>글내용</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){
%>							
			<tr>
				<td><%=rs.getString("id") %></td>
				<td><%=rs.getString("tel") %></td>
				<td><%=rs.getString("email") %></td>
			</tr>
<%							
						}
%>	
		</tbody>
	</table>
</body>
</html>
<%
				
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
</html>