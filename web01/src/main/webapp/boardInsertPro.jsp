<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- DB 연결문 -->
<%@ include file="connectPool.conf" %>
<!-- 반복 실행 구간 시작 -->
<%
	request.setCharacterEncoding("UTF-8");
	String sid = (String) session.getAttribute("uid");
	String titletxt = request.getParameter("titletxt");
	String posttxt = request.getParameter("posttxt");
	int cnt2 = 0;
	String msg = "";
	sql = "insert into board (btitle,post,regdate,author) values (?,?,now(),?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, titletxt);
	pstmt.setString(2, posttxt);
	pstmt.setString(3, sid);
	cnt = pstmt.executeUpdate();
	if(cnt>=1){
		msg = "sucess~!";
		response.sendRedirect("board1.jsp?msg="+msg);
	} else {	//변경이 실패되었을 경우
		msg = "failed~!";
		response.sendRedirect("board1.jsp?msg="+msg);
	}
	
	
 %>
 <%@ include file="connectClose.conf" %>
 <!-- DB 닫기문 -->