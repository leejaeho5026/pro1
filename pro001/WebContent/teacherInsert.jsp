<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
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
			sql = "select teacher_seq as cnt from (select * from tbl_teacher order by teacher_seq desc) where rownum = 1";
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
<title>교사 등록하기</title>
<style>
table { display:table; width:600px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333; line-height:36px; }
th { background-color:#333; color:#fff; border-bottom:1px solid #fff; }
td { padding-left:1.5rem; }
nav { text-align:center; }
h2, h3 { text-align:center; }
</style>
</head>
<body>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="teacherList.jsp">교사 목록</a>
	</nav>
	<hr>
	<h2>수강 정보 등록</h2>
	<hr>
	<form action="teacherInsertPro.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<th>
						<input type="hidden" name="teacher_seq" value="<%=cnt+1 %>">
						<label for="cno">교사코드</label>
					</th>
					<td>
						
					</td>
				</tr>
				<tr>
					<th><label for="c_name">이름</label></th>
					<td>
						<input type="text" name="c_name" id="c_name" required>
					</td>	
				</tr>	
				<tr>
					<th><label for="phone">연락처</label></th>
					<td>
						<input type="tel" name="phone" id="phone" required>
					</td>
				<tr>
					<th><label for="address">주소</label></th>
					<td>
						<input type="text" name="address" id="address" required>
					</td>
				</tr>
				<tr>
					<th><label for="regist_date">등록일</label></th>
					<td>
						<input type="text" name="regist_date" id="regist_date" pattern="^[0-9]{8}" required>
					</td>
				</tr>
				<tr>
					<th><label>타입</label></th>
					<td>
						<input type="radio" name="c_type" value="일반" checked> 일반 &nbsp;
						<input type="radio" name="c_type" value="VIP"> VIP
					</td>
				</tr>
				<tr><td colspan="2"></td></tr>
				<tr>
					<td colspan="2" style="text-align:center; cursor:pointer;">
						<input type="submit" value="교사 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<script>
	function conf(){
		var teacher_code = document.getElementById("teacher_code");
		var msg = document.getElementById("msg");
		var data = document.getElementById("teacher_code").value;
		if(teacher_code.value="" || cno.value.length!=3){
			msg.innerText = "값을 제대로 입력하지 않았거나 교사코드가 세 자리가 아닙니다.";
			teacher_code.value = "";
			teacher_code.focus();
			return;
		} else {
			teacher_code.value = "";
			window.open("teacherDoubleCheckPro.jsp?teacher_code="+data,"교사코드 체크", "top=100, height=100, width=400, height=300, toolbar=no, scrollbars=no, menubar=no");
			return;
		}
	}
	</script>
</body>
</html>