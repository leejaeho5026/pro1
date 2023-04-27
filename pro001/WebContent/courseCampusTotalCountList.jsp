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
			sql = "select class_area, class_name, count(c_name) as cnt from tbl_member, tbl_course, tbl_teacher where tbl_member.cno=tbl_course.c_no and tbl_teacher.teacher_code=tbl_course.teacher_code group by tbl_course.class_area, tbl_teacher.class_name, tbl_member.c_name";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>캠퍼스별 수강통계 내역 보기</title>
<style>
table { display:table; width:800px; margin:10px auto; 
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
	<h2>캠퍼스별 수강통계 내역 보기</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="courseInsert.jsp">과정 등록하기</a>
		|
		<a href="courseList.jsp">전체 과정 목록</a>
	</nav>
	<hr>
	<h3>캠퍼스별 수강생수 집계입니다.</h3>
	<table>
		<thead>
			<tr><th>캠퍼스명</th><th>과정명</th><th>수강인원수</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
%>							
			<tr>
				<td><%=rs.getString("class_area") %></td>
				<td><%=rs.getString("class_name") %></td>
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