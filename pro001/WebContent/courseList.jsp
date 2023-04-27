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
			sql = "select c_no, class_area, tution, tbl_course.teacher_code as teacher_code, classroom, class_name, teacher_name from tbl_course, tbl_teacher where tbl_course.teacher_code=tbl_teacher.teacher_code order by tbl_course.c_no";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전체 과정 보기</title>
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
	<h2>전체 과정 보기</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="courseInsert.jsp">과정 등록하기</a>
		|
		<a href="courseCampusTotalCountList.jsp">캠퍼스별 집계 정보</a>
		|
		<a href="courseHistoryList.jsp">과정 내역</a>
		|
		<a href="courseTotalCountList.jsp">과정 총 집계</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>과정코드</th><th>과정명</th><th>캠퍼스명</th><th>수강료</th><th>교사코드</th><th>교사명</th><th>강의실</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
%>							
			<tr>
				<td><%=rs.getString("c_no") %></td>
				<td><%=rs.getString("class_name") %></td>
				<td><%=rs.getString("class_area") %></td>
				<td><%=rs.getInt("tution") %></td>
				<td><%=rs.getString("teacher_code") %></td>
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