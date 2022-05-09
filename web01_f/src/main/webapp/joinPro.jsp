<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("id");
	String upw = request.getParameter("pw");
	String name = request.getParameter("name2");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	int cnt = 0;
	String msg;
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "insert into member values(?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, uid);
		pstmt.setString(3, upw);
		pstmt.setString(4, phone);
		pstmt.setString(5, address);
		cnt = pstmt.executeUpdate();
		if(cnt>=1){ //성공적으로 변경이 이루어 졌을 경우
			msg = "sucess~!";
			response.sendRedirect("index.jsp?msg="+msg);
			//* response.sendRedirect(encodeURI(msg)); *//
		} else {	//변경이 실패되었을 경우
			msg = "failed~!";
			response.sendRedirect("mypage.jsp?msg="+msg);
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try{
			if(conn != null) pstmt.close();
			if(pstmt != null) conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>