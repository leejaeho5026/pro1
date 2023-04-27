<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test1";
	String pass = "1234";
	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	List<String> tcode = new ArrayList<String>();
	List<String> tname = new ArrayList<String>();
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from tbl_teacher";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
				
				while(rs.next()){
					tcode.add(rs.getString("teacher_code"));
					tname.add(rs.getString("teacher_name"));
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
<title>과정 등록하기</title>
<style>
table { display:table; width:900px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333; line-height:36px; }
th { background-color:#333; color:#fff; text-align:center; min-width:150px;
border-bottom:1px solid #fff;  }
td { padding-left:2rem; }
nav { text-align:center; }
h2, h3 { text-align:center; }
</style>
</head>
<body>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="courseList.jsp">과정 목록</a>
	</nav>
	<hr>
	<h2>과정 등록하기</h2>
	<hr>
	<form action="courseInsertPro.jsp" method="post" onsubmit="return codeCheckConf(this)">
		<table>
			<tbody>
				<tr>
					<th><label for="cno">수강코드</label></th>
					<td><input type="text" name="c_no" id="c_no" pattern="^[0-9]{5}" required>
						<input type="button" value="중복확인" id="confirm_btn" onclick="conf()">
						<span id="msg">다섯 자리 숫자로 수강코드를 입력하고, 확인하시기 바랍니다.</span>
						<input type="hidden" name="ck1" id="ck1" value="no">
					</td> 
				</tr>
				<tr>
					<th><label for="class_area">캠퍼스명</label></th>
					<td>
						<input type="radio" name="class_area" id="class_area1" value="서울본원" checked>
						<label for="class_area1">서울본원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area2" value="성남분원">
						<label for="class_area2">성남분원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area3" value="부산분원">
						<label for="class_area3">부산분원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area4" value="고양분원">
						<label for="class_area4">고양분원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area5" value="대구분원">
						<label for="class_area5">대구분원</label><br>
						<input type="radio" name="class_area" id="class_area6" value="광주분원">
						<label for="class_area6">광주분원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area7" value="대전분원">
						<label for="class_area7">대전분원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area8" value="청주분원">
						<label for="class_area8">청주분원</label> &nbsp; &nbsp; &nbsp;
						<input type="radio" name="class_area" id="class_area9" value="전주분원">
						<label for="class_area9">전주분원</label> &nbsp; &nbsp; &nbsp;
					</td>	
				<tr>
					<th><label for="tution">수강료</label></th>
					<td><input type="text" name="tution" id="tution" required></td>
				</tr>
				<tr>
					<th><label for="teacher_code">교사</label></th>
					<td><select name="teacher_code" id="teacher_code">
<%
						for(int i=0;i<tcode.size();i++){
%>		
							<option value="<%=tcode.get(i) %>"><%=tname.get(i) %></option>
<%
						}
%>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="classroom">강의실</label></th>
					<td><select name="classroom" id="classroom">
							<option value="A201">A201</option> 
							<option value="A202">A202</option>
							<option value="A203">A203</option>
							<option value="A204">A204</option>
							<option value="A205">A205</option>
							<option value="A206">A206</option>
						</select>
					</td>
				</tr>
				<tr><td colspan="2"></td></tr>
				<tr>
					<td colspan="2" style="text-align:center; line-height:3; ">		
						<input type="submit" value="과정 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<script>
	function conf(){
		var cno = document.getElementById("c_no");
		var msg = document.getElementById("msg");
		var data = document.getElementById("c_no").value;
		if(cno.value="" || cno.value.length!=5){
			msg.innerText = "값을 제대로 입력하지 않았거나 수강코드가 다섯 자리가 아닙니다.";
			cno.value = "";
			cno.focus();
			return;
		} else {
			cno.value = "";
			window.open("courseDoubleCheckPro.jsp?c_no="+data,"과정 코드 체크", "top=100, height=100, width=400, height=300, toolbar=no, scrollbars=no, menubar=no");
			return;
		}
	}
	function codeCheckConf(f){
		var ck1 = document.getElementById("ck1");
		if(ck1.value!="yes"){
			alert("과정코드의 중복확인을 하지 않으셨습니다.");
			return;
		}
	}
	</script>
</body>
</html>