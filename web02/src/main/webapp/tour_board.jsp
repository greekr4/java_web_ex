<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_boardVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%

ArrayList<tour_boardVO> Volist = (ArrayList<tour_boardVO>) request.getAttribute("tour_board_detail");
if (Volist.size() == 0){
	response.sendRedirect("GetTour_boardListCtrl");
}
tour_boardVO Vo = Volist.get(0);
%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#board{
border-collapse: collapse;
width:1000px;
margin: 0 auto;
display: table;
line-height: 35px;

}
#board th{
border: 1px solid #000;
border-top: 1px solid #000;
}
img{
display:block;
width:300px;
}

</style>
</head>
<body>
<h2>여기는 tour_board.jsp입니다. 자세히보기</h2>





<table id="board">
	<tr class="line_1">
		<th colspan="2">글번호</th><th colspan="2"><%=Vo.getTour_board_num() %></th>
		<th colspan="2">작성자</th><th colspan="2"><%=Vo.getTour_board_writer() %></th>
	</tr>
	<tr class="line_2">
		<th colspan="2">제목</th><th colspan="6"><%=Vo.getTour_board_tit() %></th>
	</tr>
	<tr class="line_3">
		<th colspan="2">내용</th><th colspan="6"><%=Vo.getTour_board_detail() %></th>

	</tr>
	<tr class="line_4">
		<th>첨부이미지1</th><th><img src="<%=Vo.getTour_board_img1() %>"></th>
		<th>첨부이미지2</th><th><img src="<%=Vo.getTour_board_img2() %>"></th>
		<th>첨부이미지3</th><th><img src="<%=Vo.getTour_board_img3() %>"></th>
		<th>첨부이미지4</th><th><img src="<%=Vo.getTour_board_img4() %>"></th>
	</tr>


</table>

</body>
</html>