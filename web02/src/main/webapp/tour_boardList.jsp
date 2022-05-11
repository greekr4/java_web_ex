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
<h2>여기는 tour_boardList.jsp입니다.</h2>


<table id="tb">
	<tr><th>게시글번호</th><th>제목</th><th>내용</th><th>작성자</th><th>작성일</th><th>이미지경로1</th><th>이미지경로2</th><th>이미지경로3</th><th>이미지경로4</th><th>조회수</th><th>따봉</th></tr>

<%for(int i=0;i<mem.size();i++)
	{
	tour_boardVO mem2 = new tour_boardVO();
	mem2 = mem.get(i);
	%>
	<tr><td><%=mem2.getTour_board_num() %></td><td><%=mem2.getTour_board_tit() %></td><td><%=mem2.getTour_board_detail() %></td><td><%=mem2.getTour_board_writer() %></td><td><%=mem2.getTour_board_cdate() %></td><td><%=mem2.getTour_board_img1() %></td><td><%=mem2.getTour_board_img2() %></td><td><%=mem2.getTour_board_img3() %></td><td><%=mem2.getTour_board_img4() %></td><td><%=mem2.getTour_board_views() %></td><td><%=mem2.getTour_board_thumb() %></td></tr>

	<%} %>
	
</table>
</body>
</html>