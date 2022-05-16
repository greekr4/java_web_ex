<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_viewVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_viewVO> Volist = (ArrayList<tour_viewVO>) request.getAttribute("tour_viewList");

%>   
    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
	.subct{
	clear:both;
	display:flex;
	width:1235px;
	margin:0 auto;
	flex-wrap: wrap;
	align-content: flex-start;
	/*background-color: #777;*/
	
	}
	
	.view_item{
	float:left;
	border: 1px solid #000;
	width:32%;
	margin:5px 5px;
	height: 364px;
	/*background-color: #555;*/
	}
	.item_img{
	clear: both;
	width: 100%;
	height: 264px;
	}
	.view_item img{
	display: block;
	width :100%;
	height: 100%;
	}
	
	.item_txt{
	clear: both;
	width: 100%;
	height: 100px;
	}
	.item_txt h2{
	font-size:20px;
	font-weight: 500;
	line-height: 1.5em;
	margin:10px;
	}
	
	.item_txt p{
	margin-left:10px;
    font-size: 12px;
    line-height: 1.5em;
	}
 </style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">
<h2>테스트페이지(A11-산)</h2>
<div class="subct">

<%for(int i=0;i<Volist.size();i++)
	{
	tour_viewVO Vo = Volist.get(i);
	if (Vo.getDcode_res().equals("산")){
	%>

	
	<div class="view_item">
		<div class="item_img">
		<img alt="" src="<%=Vo.getTour_img1() %>">
		</div>
		<div class="item_txt">
		<h2><%=Vo.getTour_name() %></h2>
		<p><img src="./img/index/ico_loca.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_address() %></p>
		<p><img src="./img/index/ico_call.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_tel() %></p>
		</div>
	</div>
	
	
	<%}} %>

		





</div>

<h2>테스트페이지(A12-등산/산책로)</h2>
<div class="subct">

<%for(int i=0;i<Volist.size();i++)
	{
	tour_viewVO Vo = Volist.get(i);
	if (Vo.getDcode_res().equals("등산/산책로")){
	%>

	
	<div class="view_item">
		<div class="item_img">
		<img alt="" src="<%=Vo.getTour_img1() %>">
		</div>
		<div class="item_txt">
		<h2><%=Vo.getTour_name() %></h2>
		<p><img src="./img/index/ico_loca.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_address() %></p>
		<p><img src="./img/index/ico_call.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_tel() %></p>
		</div>
	</div>
	
	
	<%}} %>

		





</div>


</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>