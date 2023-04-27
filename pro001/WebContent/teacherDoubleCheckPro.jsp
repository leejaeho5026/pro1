<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test1";
	String pass = "1234";
	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	String teacher_code = request.getParameter("teacher_code");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from tbl_teacher where teacher_code = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, teacher_code);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>교사코드 중복체크</title>
<style>
</style>
</head>
<body>
	<input type="hidden" id="teacher_code" name="teacher_code" value="<%=teacher_code %>">
<%
				if(rs.next()){
%>
					<h3>사용이 불가능한 교사코드입니다. 다시 입력하시기 바랍니다.</h3>
					<input type="hidden" id="ps" name="ps" value="no">
					<input type="hidden" id="msg" name="msg" value="사용이 불가능한 교사코드입니다. 다시 입력하시기 바랍니다.">
<%				
				} else {
%>
					<h3>사용 가능한 교사코드입니다.</h3>
					<input type="hidden" id="ps" name="ps" value="yes">
					<input type="hidden" id="msg" name="msg" value="사용 가능한 고사코드입니다.">
<%					
				}
%>
					<button type="button" onclick="closing()">닫기</button>
<script>
function closing(){
	opener.document.getElementById("teacher_code").value = document.getElementById("teacher_code").value;
	opener.document.getElementById("ck1").value = document.getElementById("ps").value;
	opener.document.getElementById("msg").innerText = document.getElementById("msg").value;
	window.close();
}
</script>
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