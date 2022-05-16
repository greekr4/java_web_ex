<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_boardVO"%>
<%@ page import="kr.go.haenam.model.tour_commentVO"%>
<%@ page import="java.util.ArrayList"%>

    

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

.board_wrap{
clear: both;
width: 1600px;
margin: 0 auto;
}

.board_top h1{
text-align: center;
}

.board_top li{
float: left;
}
.board_top ul{
	max-width: 1220px;
    margin: 0 auto;
    display: flex;
    width: 100%;
    text-align: center;
    justify-content: space-evenly;

}
.board_top li a{
	width:400px;
    display: block;
    font-size: 18px;
    line-height: 65px;
    background: #fafafa;
    position: relative;
    border-top: 2px solid #eb6000;
    margin:30px 0;
  	z-index: 2;
    }

.board_box1{
clear: both;
width: 1200px;
margin: 10px auto;
display:flex;


}
.board_box1 .imgbox
{
display:block;
width:576px;
height: 400px;
}

.board_box1 .imgbox img
{
display:block;
width:100%;
height: 100%;
}

.board_box1 .txtbox
{
position:relative;
display:block;
width:500px;
height: 400px;
margin: 0 auto;
}

.board_box1 .txtbox h2
{
margin-bottom:20px;
}

.board_box1 .txtbox p
{
margin-bottom:10px;
}



.txt01, .txt02{

	font-size: 16px;
	margin-right: 100px;
}


.txt01:after
{
    content: '';
    display: block;
    width: 1px;
    height: 25px;
    position: absolute;
    top: 65px;
    right: 350px;
    background: #898989;
}

.txt02:after
{
    content: '';
    display: block;
    width: 1px;
    height: 25px;
    position: absolute;
    top: 105px;
    right: 350px;
    background: #898989;
}

</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">
<h2>여기는 tour_board.jsp입니다. 자세히보기</h2>

<%

ArrayList<tour_boardVO> Volist = (ArrayList<tour_boardVO>) request.getAttribute("tour_board_detail");
ArrayList<tour_commentVO> Vo2list = (ArrayList<tour_commentVO>) request.getAttribute("tour_comment_list");
if (Volist.size() == 0 && sid.equals("admin")){
response.sendRedirect("GetTour_boardListCtrl");
} else if (Volist.size() == 0 && !sid.equals("admin")){
response.sendRedirect("index.jsp");	
}

tour_boardVO Vo = Volist.get(0);
%>   


<div class="board_wrap">

<div class="board_top">

<%
String dcode = (String)request.getParameter("pidno").substring(0,3);
%>

 <%
conn = null;
pstmt = null;
rs = null;
sql = "";
try{
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select dcode_res from tour_dcode where dcode = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, dcode);
	rs = pstmt.executeQuery();
	while(rs.next()){
%>
<h1><%=rs.getString("dcode_res") %></h1>
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
<ul>
 <%
conn = null;
pstmt = null;
rs = null;
sql = "";
try{
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select * from tour_dcode where dcode like ?";
	pstmt = conn.prepareStatement(sql);
	String dcode2 = dcode.substring(0,1) + "%";
	pstmt.setString(1, dcode2);
	rs = pstmt.executeQuery();
	while(rs.next()){
%>
<li><a><%=rs.getString("dcode_res") %></a></li>
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
</ul>
</div>

<!-- board_top END  -->

<div class="board_box1">
	<div class="imgbox">
		<img alt="" src="<%=Vo.getTour_board_img1() %>">
	</div>
	<div class="txtbox">
	<h2><%=Vo.getTour_board_tit() %></h2>
	<p><span class="txt01"><img alt="" src="./img/index/view_loca.png"> 주소</span><span class="txt03"><%=Vo.getTour_board_address() %></span></p>
	<p><span class="txt02"><img alt="" src="./img/index/view_call.png"> 문의</span><span class="txt04"><%=Vo.getTour_board_tel() %></span></p>
	</div>
</div>


</div>



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
	<%for(int i=0;i<Vo2list.size();i++)
	{
	//tour_viewVO mem2 = new tour_viewVO();
	tour_commentVO Vo2 = Vo2list.get(i);
	%>
	<tr>
	<th><%=Vo2.getTour_comment_name() %></th>
	<th><%=Vo2.getTour_comment_detail() %></th>
	<th><%=Vo2.getTour_comment_tdate() %></th>
	<th><%=Vo2.getTour_comment_thumb() %></th>
	<th style= "width:110px;">
	<a href=""	onclick="window.open('Add_comment_thumb?tour_comment_uninum=<%=Vo2.getTour_comment_uninum() %>','따봉','width=1,height=1,location=no,status=no,scrollbars=yes');"	><img src="./img/rec.png" alt="" id="rec" style="display:block; width:50px;"></a>
	</th>
	</tr>
	<%} %>
	

</table>
</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>