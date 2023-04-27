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
			sql = "select * from tbl_member_202201";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오라클 데이터베이스 테이블 목록보기</title>
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
			<tr><th>순번</th><th>학생코드</th><th>이름</th><th>전화번호</th><th>등록일</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
							//01022221111
							String t1 = rs.getString("phone").substring(0, 3); //010
							String t2 = rs.getString("phone").substring(3, 7); //2222
							String t3 = rs.getString("phone").substring(7); //1111
							String tel = t1 + "-" + t2 + "-" + t3;
							
							//20220101
							String y = rs.getString("regist_date").substring(0, 4);	//2022
							String m = rs.getString("regist_date").substring(4, 6); //01
							String d = rs.getString("regist_date").substring(6); //01
							String date1 = y + "-" + m + "-" + d;  //2022-01-01
%>							
			<tr>
				<td><%=rs.getInt("member_seq") %></td>
				<td><%=rs.getString("c_no") %></td>
				<td><a href="oracleWebUpdate.jsp?c_no=<%rs.getString("c_no"); %>">
					<%=rs.getString("c_name") %>님</a></td>
				<td><%=tel %></td>
				<td><%=date1 %></td>
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