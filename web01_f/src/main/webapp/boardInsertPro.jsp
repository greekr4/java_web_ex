<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="connectPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");
	String sid = (String) session.getAttribute("uid");
	String titletxt = request.getParameter("titletxt");
	String posttxt = request.getParameter("posttxt");
	int cnt2 = 0;
	sql = "insert into board (btitle,post,regdate,author) values (?,?,now(),?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, titletxt);
	pstmt.setString(2, posttxt);
	pstmt.setString(3, sid);
	cnt = pstmt.executeUpdate();
	if(cnt>=1){
		response.sendRedirect("board1.jsp");
	} else {
		response.sendRedirect("board1.jsp");
	}
	
	
 %>
 <%@ include file="connectClose.conf" %>