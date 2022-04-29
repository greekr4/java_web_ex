<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="connectPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");
	String sid = (String) session.getAttribute("uid");
	String titletxt = request.getParameter("titletxt");
	String posttxt = request.getParameter("posttxt");
	int bno = Integer.parseInt(request.getParameter("bno"));
	sql = "delete from board where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	cnt = pstmt.executeUpdate();
	if(cnt>=1){
		response.sendRedirect("board1.jsp");
	} else {
		response.sendRedirect("board1.jsp");
	}
 %>
 <%@ include file="connectClose.conf" %>