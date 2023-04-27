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
	String cno = request.getParameter("cno");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from tbl_member where cno = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cno);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>수강코드 중복체크</title>
<style>
</style>
</head>
<body>
	<input type="hidden" id="cno" name="cno" value="<%=cno %>">
<%
				if(rs.next()){
%>
					<h3>사용이 불가능한 수강코드입니다. 다시 입력하시기 바랍니다.</h3>
					<input type="hidden" id="ps" name="ps" value="no">
<%				
				} else {
%>
					<h3>사용 가능한 수강코드입니다.</h3>
					<input type="hidden" id="ps" name="ps" value="yes">
					
<%					
				}
%>
					<button type="button" onclick="closing()">닫기</button>
<script>
function closing(){
	opener.document.getElementById("cno").value = document.getElementById("cno").value;
	opener.document.getElementById("ck1").value = document.getElementById("ps").value;
	opener.document.getElementById("msg").innerText = "사용가능한 수강코드입니다.";
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