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
font-size : 32px;
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
margin: 25px auto;
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
.board_box1 .btnbox
{
position:relative;
top:200px;
text-align: center;
}

.board_box1 .btnbox a
{
font-size:24px;
margin: 0 5px;
border: 10px solid #EB6900;
border-left:20px solid #EB6900;
border-right:20px solid #EB6900;
background-color: #EB6900;
color: #FFF;
}
.board_box1 .btnbox a#fmap
{
border: 10px solid #2f3746;
border-left:20px solid #2f3746;
border-right:20px solid #2f3746;
background-color: #2f3746;
}

	

.board_box1 .txtbox h2
{
margin-bottom:20px;
}

.board_box1 .txtbox p
{
margin-bottom:10px;
}

.txtbox_1{
float: left;
}
.txtbox_2{
float: left;
width: 330px;
line-height: 38px;
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


.board_box2{
clear: both;
width: 1200px;
margin: 25px auto;
display:block;

}

.board_box2 h4{
    position: relative;
    margin-top:20px;
    margin-bottom: 20px;
    padding-left: 32px;
    font-size: 1.8em;
    line-height: 1.2;
    color: #353535;
    letter-spacing: -0.5px;
}

.board_box2 h4:before{
	position: absolute;
    top: 3px;
    left: 0;
    content: "";
    display: block;
    width: 21px;
    height: 21px;
    border: 3px solid #999;
    box-sizing: border-box;
}

.board_box2 h4:after{
	position: absolute;
    top: 0px;
    left: 14px;
    content: "";
    display: block;
    width: 11px;
    height: 11px;
    background: #eb6900;
}

.board_box2 p{
margin-bottom: 30px;
font-size: 0.9em;
line-height: 1.6;
color:#666;
}

.comment_wrap{
clear: both;
width: 1200px;
margin: 25px auto;
display:block;
}
.comment_wrap h2{
text-align: center;
}
.comment_top{
clear: both;
width: 1200px;
margin: 0px auto;
display:block;
background-color: #bbb;
border-bottom: 2px dotted #000;
}

.comment_main{
clear: both;
width: 1200px;
margin: 0px auto;
display:flex;
flex-wrap: wrap;
text-align: center;
}
.comment_box1{
width: 20%;
border-bottom: 1px solid #000;
}
.comment_box2{
width: 50%;
border-bottom: 1px solid #000;
}

.comment_box3{
width: 20%;
border-bottom: 1px solid #000;
}

.comment_box4{
width: 5%;
border-bottom: 1px solid #000;
}
.comment_box4{
width: 5%;
border-bottom: 1px solid #000;
}




</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">
<h2>????????? tour_board.jsp?????????. ???????????????</h2>

<%

ArrayList<tour_boardVO> Volist = (ArrayList<tour_boardVO>) request.getAttribute("tour_board_detail");
ArrayList<tour_commentVO> Vo2list = (ArrayList<tour_commentVO>) request.getAttribute("tour_comment_list");
if (Volist.size() == 0 && sid.equals("admin")){
	
	out.println("<script>"
	+ "var msgvalue = confirm('?????? ???????????? ????????????. ?????? ??????????????????????');"
	+ "if(msgvalue == true){ window.open('Send_AddTour_board','??????','width=430,height=500,location=no,status=no,scrollbars=yes'); }"
	+ "else { history.back(); }"
	+ "history.back();"
	+ "</script>");
	return;

}
else if (Volist.size() == 0 && !sid.equals("admin")){
	out.println("<script>alert('???????????????');history.back();</script>");
	return;
	//response.sendRedirect("/GetTour_viewCtrl");
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


<li><a href="GetTour_viewCtrl?pno=<%=rs.getString("dcode") %>#<%=rs.getString("dcode") %>"><%=rs.getString("dcode_res") %></a></li>
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
	<div class="txtbox_1">
	<p><span class="txt01"><img alt="" src="./img/index/view_loca.png"> ??????</span></p>
	<p><span class="txt02"><img alt="" src="./img/index/view_call.png"> ??????</span></p>
	</div>
	<div class="txtbox_2">
	<p><span class="txt03"><%=Vo.getTour_board_address() %></span></p>
	<p><span class="txt04"><%=Vo.getTour_board_tel() %></span></p>
	</div>
	<div class="btnbox">
	<a id="sizeup">?????? ????????????&nbsp;&nbsp;&nbsp;&nbsp;+</a>
	<a id="fmap">????????? ??????&nbsp;&nbsp;&nbsp;&nbsp;+</a>
	</div>
	<div class="thview">
	<p>????????? : <%=Vo.getTour_board_thumb() %></p>
	<p>????????? : <%=Vo.getTour_board_views() %></p>
	</div>
	
	</div>

</div>

<div class="board_box2">

<p><%=Vo.getTour_board_detail() %></p>
</div>

<div class="comment_wrap">
	<div class="comment_top">
		<h2>????????????</h2>
	</div>
	<div class="comment_main">
		<%for(int i=0;i<Vo2list.size();i++)
		{
		//tour_viewVO mem2 = new tour_viewVO();
		tour_commentVO Vo2 = Vo2list.get(i);
		%>
	
		<div class="comment_box1">
		<%=Vo2.getTour_comment_name() %>
		</div>
		<div class="comment_box2">
		<a href="GetTour_commentBoard?unino=<%=Vo2.getTour_comment_uninum() %>"><%=Vo2.getTour_comment_tit() %></a>
		</div>
		<div class="comment_box3">
		<%=Vo2.getTour_comment_tdate() %>
		</div>
		<div class="comment_box4">
		<%=Vo2.getTour_comment_thumb() %>
		</div>
		<div class="comment_box5">
		<a href=""	onclick="window.open('Add_comment_thumb?tour_comment_uninum=<%=Vo2.getTour_comment_uninum() %>','??????','width=1,height=1,location=no,status=no,scrollbars=yes');"	>??????</a>
		</div>
		
		<%} %>
		
	</div>
</div>


</div> <!-- board_wrap -->


<!-- <th><button onclick="window.open('Send_AddTour_comment?cbno=','??????','width=430,height=500,location=no,status=no,scrollbars=yes');">??????(?????????)</button></th>  -->

<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>