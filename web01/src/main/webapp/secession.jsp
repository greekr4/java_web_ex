<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="environment.jsp" %>
<%
	String sid = (String) session.getAttribute("uid");
	
	//연결 객체, 상태 정보 객체 선언, 반환 결과 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	int cnt = 0;
	
	//try~catch~ 안에 해당 드라이버 로딩, 연결 객체를 통한 연결, 상태 정보 활성화
	//SQL작성, SQL실행, 상태 정보 객체 닫기, 연결 객체 닫기
	try {
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "delete from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sid);
		cnt = pstmt.executeUpdate();
		if(cnt>0){
			session.invalidate();
			response.sendRedirect(home);
		} else {
			out.println("<p>회원탈퇴가 정상적으로 이루어지지 못했습니다.</p>");
			response.sendRedirect(mypage);
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		try {
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();	
		}
	}
%>