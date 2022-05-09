<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connectPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");
	String sid = (String) session.getAttribute("uid");
	String titletxt = request.getParameter("titletxt");
	String posttxt = request.getParameter("posttxt");
	int bno = Integer.parseInt(request.getParameter("bno"));
	sql = "update board set btitle=?,post=? where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, titletxt);
	pstmt.setString(2, posttxt);
	pstmt.setInt(3, bno);
	cnt = pstmt.executeUpdate();
	if(cnt>=1){
		response.sendRedirect("boardDetail.jsp?bno="+bno);
	} else {
		response.sendRedirect("boardDetail.jsp?bno="+bno);
	}
	
	
 %>
 <%@ include file="connectClose.conf" %>