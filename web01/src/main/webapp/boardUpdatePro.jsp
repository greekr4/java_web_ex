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
	int bno = Integer.parseInt(request.getParameter("bno"));
	int cnt2 = 0;
	String msg = "";
	sql = "update board set btitle=? where bno=?";
	//&& update board set post=? where bno=1;
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, titletxt);
	pstmt.setInt(2, bno);
	//pstmt.setString(2, posttxt);
	cnt = pstmt.executeUpdate();
	sql = "update board set post=? where bno=?";
	//&& update board set post=? where bno=1;
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, posttxt);
	pstmt.setInt(2, bno);
	//pstmt.setString(2, posttxt);
	cnt2 = pstmt.executeUpdate();
	if(cnt>=1 && cnt2>=1){
		
		
		msg = "sucess~!";
		response.sendRedirect("board1.jsp?msg="+msg);
		//* response.sendRedirect(encodeURI(msg)); *//
	} else {	//변경이 실패되었을 경우
		msg = "failed~!";
		response.sendRedirect("board1.jsp?msg="+msg);
	}
	
	
 %>
 <%@ include file="connectClose.conf" %>
 <!-- DB 닫기문 -->