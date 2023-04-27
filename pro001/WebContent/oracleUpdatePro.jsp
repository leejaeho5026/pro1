<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	String c_no = request.getParameter("c_no");
	String c_name = request.getParameter("c_name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	int a = 0;
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "update TBL_MEMBER_202201 set c_name=?, phone=?, address=? where c_no=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, c_name);
				pstmt.setString(2, phone);
				pstmt.setString(3, address);
				pstmt.setString(4, c_no);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("삭제성공");
				} else {
					System.out.println("삭제실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("oracleWebList.jsp");
			} catch(SQLException e) {
				System.out.println("SQL실패");
			}
		} catch(SQLException e){
			System.out.println("연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
	
%>