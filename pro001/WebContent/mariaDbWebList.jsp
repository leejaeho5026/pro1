<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://127.0.0.1:3308/company";
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
<title>마리아DB 데이터베이스 테이블 목록보기</title>
<style>

</style>
</head>
<body>
	<h2>강좌목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>아이디</th><th>과정명</th><th>학점</th><th>요일</th><th>소요시간</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){
							String w = "";
							if(rs.getInt("week")==1) {
								w = "월";
							} else if(rs.getInt("week")==2) {
								w = "화";
							} else if(rs.getInt("week")==3) {
								w = "수";
							} else if(rs.getInt("week")==4) {
								w = "목";
							} else if(rs.getInt("week")==5) {
								w = "금";
							} else {
								w = "";
							}
							// 1200 - 900
							int hs = (rs.getInt("end_end") - rs.getInt("start_hour")) / 100;
							
							// 1200 => 12:00
							int a = rs.getInt("end_end");
							String e = a + "";	//숫자를 문자열로
							String k = e.substring(0, 2) + ":" + e.substring(2);
							
							String b = "12";	//문자열을 숫자로
							int c = Integer.parseInt(b);  //"12" => 12
%>							
							
			<tr>
				<td><%=rs.getString("id") %></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getInt("credit") %></td>
				<td><%=w %></td>
				<td><%=hs %>시간</td>
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