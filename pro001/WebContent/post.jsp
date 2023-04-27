<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%@
	request.setCharacterEncoding("utf-8");
	requset.setContentType("text/html; charset=uft-8");
	String c_no = requset.getParameter("c_no");
	String c_name = requset.getParameter("c_name");
	String phone = requset.getParameter(phone);
	String address = requset.getParameter(address);
	String regist_date = requset.getParameter(regist_date);
	String c_type = requset.getParameter(c_type);
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test1";
	String pass = "1234";

	Connection conn = null;
	PreparedStatement pstmt = null;
	Stirng sql = "";
	int a = 0;
	
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "insert into TBL_MEMBER_202201 values(member_seq.nextval,?,?,?,?,?,?)";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, c_no);
				pstmt.setString(2, c_name);
				pstmt.setString(3, phone);
				pstmt.setString(4, address);
				pstmt.setString(5, regist_date);
				pstmt.setString(6, c_type);
				
			a = pstmt.executeUpdate();
			if(a>0){
				system.out.println("수강 등록 성공");
			}else {
				system.out.println("수강 등록 실패")
			}
			pstmt.close();
			conn.close();
			response.sendRedirect("oracleWebInsert.jsp");
			
				}catch(Exception e){
				system.out.println("SQL접속 실패");
				}
			}catcch(Exception e){
			system.out.println("데이터베이스 접속 실패")
			}
		}catch(Exception e){
		system.out.println("드라이버 접속 실패")		
		}
 %>
    
    
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>수강신청</title>
</head>
<body>
	<h2>수강신청 등록을 처리하고 있습니다.</h2>
</body>
</html>