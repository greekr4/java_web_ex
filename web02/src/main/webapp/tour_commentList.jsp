<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_commentVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_commentVO> mem = (ArrayList<tour_commentVO>) request.getAttribute("tour_commentList");
%>   

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#tb{
border-collapse: collapse;
width:1800px;
margin: 0 auto;
display: table;
line-height: 35px;

}
#tb td{
width : 200px;
border-bottom: 1px solid #000;
}
#tb th{
border-bottom: 1px solid #000;
border-top: 1px solid #000;
}

</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<h2>여기는 tour_commentList.jsp입니다.</h2>
<button onclick="window.open('Send_AddTour_comment','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가(서블릿)</button>


<table id="tb">
	<tr><th>댓글고유번호</th><th>게시글번호</th><th>내용</th><th>작성자</th><th>작성일</th><th>따봉</th><th>버튼</th></tr>

<%for(int i=0;i<mem.size();i++)
	{
	tour_commentVO mem2 = new tour_commentVO();
	mem2 = mem.get(i);
	%>
	<tr><td><%=mem2.getTour_comment_uninum() %></td><td><%=mem2.getTour_comment_bnum() %></td><td><%=mem2.getTour_comment_detail() %></td><td><%=mem2.getTour_comment_name() %></td><td><%=mem2.getTour_comment_tdate() %></td><td><%=mem2.getTour_comment_thumb() %></td>
	
		<th style= "width:110px;">
		<button onclick="window.open('Send_EditTour_comment?tour_comment_no=<%=mem2.getTour_comment_uninum() %>','수정','width=430,height=500,location=no,status=no,scrollbars=yes');">수정</button>
		<button onclick="window.open('DelTour_commentCtrl?tour_comment_no=<%=mem2.getTour_comment_uninum() %>','삭제','width=430,height=500,location=no,status=no,scrollbars=yes');">삭제</button>
		</th>
	</tr>

	<%} %>
</table>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>