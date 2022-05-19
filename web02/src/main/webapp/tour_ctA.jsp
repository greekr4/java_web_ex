<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_viewVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_viewVO> Volist = (ArrayList<tour_viewVO>) request.getAttribute("tour_viewList");
String dcode = (String)request.getParameter("pno");
String dcode3 = (String)request.getParameter("pno");
Connection conn2 = null;
PreparedStatement pstmt2 = null;
ResultSet rs2 = null;
String sql2 = "";
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
	
	.page { clear:both; min-height:100vh; display:none; width: 100%; }
	.page:target { display:block; }
	.page_con { clear:both; width: 100%; }
	.page_wrap { width: 1280px; margin: 0 auto; min-height:20vh; }


.subct_top{
		clear: both;
		width: 1600px;
		margin: 0 auto;
		}
		
		.subct_top h1{
		text-align: center;
		font-size : 32px;
		}
		
		.subct_top li{
		float: left;
		}
		.subct_top ul{
			max-width: 1220px;
		    margin: 0 auto;
		    display: flex;
		    width: 100%;
		    text-align: center;
		    justify-content: space-evenly;
		
		}
		.subct_top li a{
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



 </style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">

<section class="page" id="A11">
<div class="subct">
<%@ include file="subct_top.conf" %>
			
			
<%for(int i=0;i<Volist.size();i++)
	{
	tour_viewVO Vo = Volist.get(i);
	if (Vo.getDcode_res().equals("산")){
	%>


	
	<div class="view_item">
		<a href="/web02/GetboardMoreCtrl?pidno=<%=Vo.getTour_id() %>">
		<div class="item_img">
		<img alt="" src="<%=Vo.getTour_img1() %>">
		</div>
		<div class="item_txt">
		<h2><%=Vo.getTour_name() %></h2>
		<p><img src="./img/index/ico_loca.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_address() %></p>
		<p><img src="./img/index/ico_call.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_tel() %></p>
		</div>
		</a>
	</div>
	
	
	<%}} %>

</div>
</section>
<section class="page" id="A12">
<div class="subct">
<%@ include file="subct_top.conf" %>

<%for(int i=0;i<Volist.size();i++)
	{
	tour_viewVO Vo = Volist.get(i);
	if (Vo.getDcode_res().equals("등산/산책로")){
	%>

	
	<div class="view_item">
		<a href="/web02/GetboardMoreCtrl?pidno=<%=Vo.getTour_id() %>">
		<div class="item_img">
		<img alt="" src="<%=Vo.getTour_img1() %>">
		</div>
		<div class="item_txt">
		<h2><%=Vo.getTour_name() %></h2>
		<p><img src="./img/index/ico_loca.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_address() %></p>
		<p><img src="./img/index/ico_call.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_tel() %></p>
		</div>
		</a>
	</div>
	
	
	<%}} %>

		





</div>
</section>
<section class="page" id="A13">
<div class="subct">
<%@ include file="subct_top.conf" %>
<%for(int i=0;i<Volist.size();i++)
	{
	tour_viewVO Vo = Volist.get(i);
	if (Vo.getDcode_res().equals("해수욕장")){
	%>

	
	<div class="view_item">
		<a href="/web02/GetboardMoreCtrl?pidno=<%=Vo.getTour_id() %>">
		<div class="item_img">
		<img alt="" src="<%=Vo.getTour_img1() %>">
		</div>
		<div class="item_txt">
		<h2><%=Vo.getTour_name() %></h2>
		<p><img src="./img/index/ico_loca.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_address() %></p>
		<p><img src="./img/index/ico_call.png" style="display:block; width:15px; float: left;"></img><%=Vo.getTour_tel() %></p>
		</div>
		</a>
	</div>
	
	
	<%}} %>

		





</div>
</section>

<script type="text/javascript">
/* 
var test1 = document.getElementById("hd_bt");

setInterval(() => {
	if (window.scrollY > 135){
		test1.style.position="fixed";
		test1.style.top=0;
	} else if (window.scrollY < 135){
		test1.style.position="unset";
	}
}, 1000);
*/
</script>





</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>