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
			sql = "select * from tbl_teacher order by teacher_code";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전체 교사 보기</title>
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
	<h2>전체 교사 보기</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="teacherInsert.jsp">과정 등록하기</a>
		|
		<a href="teacherAssignedHistoryList.jsp">강사 배치내역</a>
		|
		<a href="teacherAssignedList.jsp">배치 목록</a>
		|
		<a href="teacherTuitionTotalList.jsp">강사 총 집계</a>
		|
		<a href="teacherUnassignedList.jsp">배정되어 있지 않은 강사</a>
		|
		<a href="teacherUnteachingList.jsp">현재 수강생이 없어 강의를 하고 있지 않은 강사</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>교사코드</th><th>과정명</th><th>교사명</th><th>강의료</th><th>계약일</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
%>							
			<tr>
				<td><%=rs.getString("teacher_code") %></td>
				<td><%=rs.getString("class_name") %></td>
				<td><%=rs.getString("teacher_name") %></td>
				<td><%=rs.getInt("class_price") %></td>
				<td><%=rs.getString("teacher_regist_date") %></td>
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