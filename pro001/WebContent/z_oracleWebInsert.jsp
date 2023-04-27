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
	int cnt = 0;
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select member_seq as cnt from (select * from tbl_member order by member_seq desc) where rownum = 1";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
				if(rs.next()){
					cnt = rs.getInt("cnt");
				}
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
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오라클 수강 정보 등록하기</title>
<style>
</style>
</head>
<body>
	<nav>
		<a href="index.jsp">메인으로</a>
		<a href="oracleWebList.jsp">수강생 목록</a>
	</nav>
	<hr>
	<h2>수강 정보 등록</h2>
	<hr>
	<form action="oracleInsertPro.jsp" method="post" onsubmit="return codeCheckConf(this)">
		<input type="hidden" name="member_seq" value="<%=cnt+1 %>">
		<label for="cno">수강코드</label> :
		<input type="text" name="cno" id="cno" pattern="^[0-9]{5}" required>
		<input type="button" value="중복확인" id="confirm_btn" onclick="conf()">
		<span id="msg">다섯 자리 숫자로 수강코드를 입력하고, 확인하시기 바랍니다.</span>
		<input type="hidden" name="ck1" id="ck1" value="no"> 
		<br><br>
		<label for="c_name">이름</label> :
		<input type="text" name="c_name" id="c_name" required><br><br>
		<label for="phone">연락처</label> :
		<input type="tel" name="phone" id="phone" required><br><br>
		<label for="address">주소</label> :
		<input type="text" name="address" id="address" required><br><br>
		<label for="regist_date">등록일</label> :
		<input type="text" name="regist_date" id="regist_date" pattern="^[0-9]{8}" required><br><br>
		<label>타입</label> :
		<input type="radio" name="c_type" value="일반" checked> 일반
		<input type="radio" name="c_type" value="VIP"> VIP<br><br><br>
		<input type="submit" value="수강 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
	<script>
	function conf(){
		var cno = document.getElementById("cno");
		var msg = document.getElementById("msg");
		var data = document.getElementById("cno").value;
		if(cno.value="" || cno.value.length!=5){
			msg.innerText = "값을 제대로 입력하지 않았거나 수강코드가 다섯 자리가 아닙니다.";
			cno.value = "";
			cno.focus();
			return;
		} else {
			cno.value = "";
			window.open("doubleCheckPro.jsp?cno="+data,"수강코드 체크", "top=100, height=100, width=400, height=300, toolbar=no, scrollbars=no, menubar=no");
			return;
		}
	}
	function codeCheckConf(f){
		var ck1 = document.getElementById("ck1");
		if(ck1.value!="yes"){
			alert("수강코드의 중복확인을 하지 않으셨습니다.");
			return;
		}
	}
	</script>
</body>
</html>