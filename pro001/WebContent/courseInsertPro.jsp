<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");

	String c_no = request.getParameter("c_no");
	String class_area = request.getParameter("class_area");
	int tution = Integer.parseInt(request.getParameter("tution"));
	String teacher_code = request.getParameter("teacher_code");
	String classroom = request.getParameter("classroom");
	
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
			sql = "insert into TBL_COURSE values(?,?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, c_no);
				pstmt.setString(2, class_area);
				pstmt.setInt(3, tution);
				pstmt.setString(4, teacher_code);
				pstmt.setString(5, classroom);
				
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("과정 등록 성공~!");
				} else {
					System.out.println("과정 등록 실패~!");
				}
				
				pstmt.close();
				conn.close();
				response.sendRedirect("courseList.jsp");
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