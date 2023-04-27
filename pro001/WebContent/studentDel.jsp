<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
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
	String sql = "";
	int a = 0;
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "delete from TBL_MEMBER where member_seq=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, member_seq);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("수강 정보 삭제 성공");
				} else {
					System.out.println("수강 정보 삭제 실패");
				}
				pstmt.close();
				conn.close();
			} catch(SQLException e) {
				System.out.println("SQL 구문 실패");
			}
		} catch(SQLException e){
			System.out.println("연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>
<%	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "update TBL_MEMBER set member_seq=rownum";
			try {
				pstmt = conn.prepareStatement(sql);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("갱신 성공");
				} else {
					System.out.println("갱신 실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("studentList.jsp");
			} catch(SQLException e) {
				System.out.println("SQL 구문 실패");
			}
		} catch(SQLException e){
			System.out.println("연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>