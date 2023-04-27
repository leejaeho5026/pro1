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
			sql = "select c_name, class_area, class_name, teacher_name, classroom from tbl_member, tbl_course, tbl_teacher where tbl_member.cno=tbl_course.c_no and tbl_teacher.teacher_code=tbl_course.teacher_code order by tbl_member.cno";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>수강 현황 보기</title>
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
	<h2>수강 현황 보기</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="oracleStudentInsert.jsp">수강 등록하기</a>
		|
		<a href="courseList.jsp">전체 과정 목록</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>과정번호</th><th>캠퍼스</th><th>과정명</th><th>교사명</th><th>강의실</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
%>							
			<tr>
				<td><%=rs.getString("c_name") %></td>
				<td><%=rs.getString("class_area") %></td>
				<td><%=rs.getString("class_name") %></td>
				<td><%=rs.getString("teacher_name") %></td>
				<td><%=rs.getString("classroom") %></td>
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