<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_boardVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_boardVO> mem = (ArrayList<tour_boardVO>) request.getAttribute("tour_boardList");
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
width : 150px;
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
<h2>여기는 tour_boardList.jsp입니다.</h2>

<button onclick="window.open('Send_AddTour_board','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가2(서블릿)</button>
<table id="tb">
	<tr>
	<th>게시글번호</th><th>pid넘버</th><th>제목</th><th>내용</th><th>작성자</th><th>작성일</th><th>이미지경로1</th><th>이미지경로2</th><th>이미지경로3</th><th>이미지경로4</th><th>조회수</th><th>따봉</th>
	<th>주소</th><th>문의</th><th>버튼</th>
	</tr>

<%for(int i=0;i<mem.size();i++)
	{
	tour_boardVO mem2 = new tour_boardVO();
	mem2 = mem.get(i);
	%>
	<tr><td><%=mem2.getTour_board_num() %></td><td><%=mem2.getTour_board_pidno() %></td><td><%=mem2.getTour_board_tit() %></td>
	<td><textarea name="" id="" cols="30" rows="10"><%=mem2.getTour_board_detail() %></textarea></td>
	<td><%=mem2.getTour_board_writer() %></td><td><%=mem2.getTour_board_cdate() %></td><td><%=mem2.getTour_board_img1() %></td><td><%=mem2.getTour_board_img2() %></td><td><%=mem2.getTour_board_img3() %></td><td><%=mem2.getTour_board_img4() %></td><td><%=mem2.getTour_board_views() %></td><td><%=mem2.getTour_board_thumb() %></td>
	<td><%=mem2.getTour_board_address() %></td>
	<td><%=mem2.getTour_board_tel() %></td>
	<td>
	<button onclick="window.open('Send_EditTour_board?board_edit_no=<%=mem2.getTour_board_num() %>','수정','width=430,height=500,location=no,status=no,scrollbars=yes');">수정</button>
	<button onclick="window.open('DelTour_boardCtrl?board_del_no=<%=mem2.getTour_board_num() %>','삭제','width=430,height=500,location=no,status=no,scrollbars=yes');">삭제</button>
	</td>
	</tr>

	<%} %>
	
</table>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>