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
<link rel="stylesheet" href="common.css">
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
#board img{
display:block;
width:300px;
}

#comment{
border-collapse: collapse;
width:1000px;
margin: 0 auto;
display: table;
line-height: 35px;

}
#comment th{
border: 1px solid #000;
border-top: 1px solid #000;
}
#comment img{
display:block;
width:300px;
}
#rec{
display:block;
width:100px;
}


</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
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
<br>
	<table id="comment">
	<tr class="line_1">
		<th colspan="10">이용후기</th>
		<th><button onclick="window.open('Send_AddTour_comment?cbno=<%=Vo.getTour_board_num() %>','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가(서블릿)</button></th>
	</tr>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";
try{
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select * from tour_comment where tour_comment_bnum = ? order by tour_comment_uninum";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, Vo.getTour_board_num());
	rs = pstmt.executeQuery();
	while(rs.next()){
		%>

	<tr>
	<th>작성자</th><th><%=rs.getString("TOUR_COMMENT_NAME") %></th>
	<th>내용</th><th><%=rs.getString("TOUR_COMMENT_DETAIL") %></th>
	<th>작성일</th><th><%=rs.getString("TOUR_COMMENT_TDATE") %></th>
	<th>추천수</th><th><%=rs.getString("TOUR_COMMENT_THUMB") %></th>
	
	<th style= "width:110px;">
	<a href=""	onclick="window.open('Add_comment_thumb?tour_comment_uninum=<%=rs.getString("tour_comment_uninum") %>','따봉','width=1,height=1,location=no,status=no,scrollbars=yes');"	><img src="./img/rec.png" alt="" id="rec" style="display:block; width:"></a>
	
	</th>
	</tr>

	    <%
	}
}catch(Exception e){
	e.printStackTrace();
} finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
	e.printStackTrace();
	}
	
}
%>
</table>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>