<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>수강 신청 정보 상세 보기</title>
<style>
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int member_seq = Integer.parseInt(request.getParameter("member_seq"));
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "test1";
		String pass = "1234";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		String c_name = "";
		String phone = "";
		String address = "";
		String regist_date = "";
		String c_type = "";
		String cno = "";
		int seq = 0;
		try {
			Class.forName(driver);
			try {
				conn = DriverManager.getConnection(url, user, pass);
				sql = "select * from TBL_MEMBER where member_seq=?";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, member_seq);
					rs = pstmt.executeQuery();
					if(rs.next()){
						phone = rs.getString("phone");
						address = rs.getString("address");
						seq = rs.getInt("member_seq");
						cno = rs.getString("cno");
						c_name = rs.getString("c_name");
						c_type = rs.getString("c_type");
						regist_date = rs.getString("regist_date");
					}
					rs.close();
					pstmt.close();
					conn.close();
				} catch(SQLException e){
					System.out.println("SQL 구문 실행 실패");
				}
			} catch(SQLException e){
				System.out.println("연결 실패");
			}
		} catch(ClassCastException e){
			System.out.println("드라이버 로딩 실패");
		}
	%>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="studentList.jsp">수강생 목록</a>
		|
		<a href="studentInsert.jsp">수강 등록하기</a>
	</nav>
	<hr>
	<h2>수강생 정보 상세 보기</h2>
	<hr>
	<table>
		<tbody>
			<tr>
				<th>순번</th><td><%=seq %></td>
			</tr>
			<tr>
				<th>수강코드</th>
				<td>
					<%=cno %>
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%=c_name %></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><%=phone %></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><%=address %></td>
			</tr>
			<tr>
				<th>수강신청일</th>
				<td><%=regist_date %></td>
			</tr>
			<tr>
				<th>수강등급</th>
				<td><%=c_type %></td>
			</tr>
			<tr><td colspan="2"></td></tr>
			<tr>
				<td colspan="2">
					<a href="studentUpdate.jsp?member_seq=<%=seq %>">수강 정보 수정</a>
					|
					<a href="studentDel.jsp?member_seq=<%=seq %>">수강 철회</a>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>