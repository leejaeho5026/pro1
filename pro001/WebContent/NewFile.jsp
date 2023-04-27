<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@
	String driver = "";
	String url = "";
	String user = "";
	String pass = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
	Class.forName(driver);
		try{
		conn = DriverManager.getConnection(url,user,pass);
			try{
			pstmt = conn.PrepareStatement(sql);
			pstmt = setString();
			pstmt = setString();
			pstmt = setString();
			
			a = pstmtExdd ();
			if(a>0){
				System.out.println("성공");
			}eles{
				System.out.println("실패");
			}
			
			}catch(Exception e){
				System.out.println("SQL 접속 실패);
		
		}catch(Exception e){
			System.out.println("데이터베이스 접속 실패");
			
	}catch(Exception e){
		Sysout.out.println("드라이버 접속 실패");
		
		
 %>


<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>Insert title here</title>
</head>
<body>

</body>
</html>