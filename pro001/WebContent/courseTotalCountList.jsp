<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test1";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select distinct cno, count(*) as cnt from tbl_member group by cno";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>과정별 인원수 집계 보기</title>
<style>
table { display:table; width:600px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333;
text-align:center; line-height:36px; }
th { background-color:#333; color:#fff; }
nav { text-align:center; }
h2, h3 { text-align:center; }
</style>
</head>
<body>
	<h2>과정별 인원수 집계 보기</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="courseInsert.jsp">과정 등록하기</a>
		|
		<a href="courseList.jsp">전체 과정 목록</a>
	</nav>
	<hr>
	<h3>과정별 수강생 집계입니다.</h3>
	<table>
		<thead>
			<tr><th>과정</th><th>학생수</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
%>							
			<tr>
				<td><%=rs.getString("cno") %></td>
				<td><%=rs.getInt("cnt") %></td>
			</tr>
<%							
						}
%>	
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
			System.out.println("데이터베이스 연결 실패~!");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패~!");
	}
%>