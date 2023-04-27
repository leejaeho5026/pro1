<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	int member_seq = Integer.parseInt(request.getParameter("member_seq"));
	String cno = request.getParameter("cno");
	String c_name = request.getParameter("c_name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String regist_date = request.getParameter("regist_date");
	String c_type = request.getParameter("c_type");
	
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
			sql = "insert into TBL_MEMBER values(?,?,?,?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, member_seq);
				pstmt.setString(2, cno);
				pstmt.setString(3, c_name);
				pstmt.setString(4, phone);
				pstmt.setString(5, address);
				pstmt.setString(6, regist_date);
				pstmt.setString(7, c_type);
				
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("수강생 등록 성공~!");
				} else {
					System.out.println("수강생 등록 실패~!");
				}
				
				pstmt.close();
				conn.close();
				response.sendRedirect("oracleWebList.jsp");
				//response.sendRedirect("index.jsp");
			} catch(SQLException e){
				System.out.println("SQL 오류~!");
			}
		} catch(SQLException e){
			System.out.println("연결 실패~!");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패~!");
	}
%>