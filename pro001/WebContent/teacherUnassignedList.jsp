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
			sql = "select teacher_code, class_name, teacher_name from tbl_teacher where teacher_code not in (select teacher_code from tbl_course)";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배정되지 않은 교사 목록 보기</title>
<style>
table { display:table; width:800px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333;
text-align:center; line-height:36px; }
th { background-color:#333; color:#fff; }
</style>
</head>
<body>
	<h2>배정되지 않은 교사 목록 보기</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="teacherInsert.jsp">교사 등록하기</a>
		|
		<a href="teacherList.jsp">교사 목록</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>교사코드</th><th>과정명</th><th>교사명</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
%>							
			<tr>
				<td><%=rs.getString("teacher_code") %></td>
				<td><%=rs.getString("class_name") %></td>
				<td><%=rs.getString("teacher_name") %></td>
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