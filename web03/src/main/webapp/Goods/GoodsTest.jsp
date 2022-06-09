<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <%@ page import="com.shop.common.CcodeVO"%>
<%@ page import="com.shop.common.DcodeVO"%>
<%@ page import="com.shop.model.CodeDAO"%>
<%@ page import="java.util.ArrayList"%>

   
<%
   CodeDAO DAO = new CodeDAO();
   ArrayList<CcodeVO> Volist = DAO.getCcode();
   ArrayList<DcodeVO> Volist2 = DAO.getDcode();
   request.setAttribute("Volist", Volist);
   request.setAttribute("Volist2", Volist2);   
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태균낚시마트 - 상품</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/ft.css">
<!--  -->





<style>
.view_item{
	float:left;
	width:32%;
	margin:5px 5px;
	height: 450px;
	overflow: hidden;
	/* border: 1px solid #000; */
	/*background-color: #555;*/
	}

	.item_img{
	overflow:hidden;
	clear: both;
	width: 100%;
	height: 300px;
	border: 1px solid #fff;
	box-sizing: border-box;
	}
	.item_img:hover{
	border: 1px solid #777;
	}

.scale {
width: 100%;
height: 264px;
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out;  
}
.scale:hover {
  transform: scale(1.1);
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -ms-transform: scale(1.1);
  -o-transform: scale(1.1);
}
.sale_con{
z-index:998;
position: relative;
text-align:center;
font-weight:bold;
color:black;
background-color: #fff;
width: 50px;
height: 40px;
top:10px;
left:10px;
border:1px solid #ddd;
border-top: 1px solid #000;

}

.item_img:hover .sale_con{
color:white;
background-color: #000;
transition: all 0.2s ease-in-out;  
}


	
.view_item img{
overflow:hidden;
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
	white-space:nowrap;
	font-size:16px;
	font-weight: bold;
	line-height: 1em;
	margin:10px;
	}
	
	.item_txt .txt_detail{
	margin-left:18px;
    font-size: 12px;
    line-height: 1.5em;
    color:#777;
	}
	.item_txt .txt_price1{
	margin-left:18px;
    font-size: 12px;
    text-decoration: line-through;
    line-height: 1.5em;
    color:#777;
	}	
	.item_txt .txt_price2{
	margin-left:18px;
    font-size: 20px;
    font-weight:bold;
    line-height: 1.5em;

	}	
	.subct{
	clear:both;
	display:flex;
	width:1235px;
	margin:0 auto;
	flex-wrap: wrap;
	align-content: flex-start;
	/*background-color: #777;*/
	
	}
	
	
	section {display : none;}
	section:target {
	display:block;
	}
	
	.menubtn_wrap{
	margin-top: 50px;
	margin-bottom: 50px;
	clear: both;
	width: 100%;
	}
	.menubtn_box{
	margin:0 auto;
	text-align: center;
	}
	
	button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #343a40;
  width: 200px;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
button:hover,.form button:active,.form button:focus {
  background: #444a50;
}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">


<section id="A11"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'A' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'A11' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	
	</c:if>
	</c:forEach>
</div>
</section>


<section id="A12"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'A' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'A12' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>

<section id="A13"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'A' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'A13' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>

<!-- 시작 -->
<section id="A14"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'A' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'A14' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->
<!-- ---------------A끝---------------- -->

<!-- 시작 -->
<section id="B11"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'B' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'B11' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="B12"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'B' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'B12' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="B13"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'B' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'B13' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- BBBBBBBBBBBBBBBBBBBB끝 -->


<!-- 시작 -->
<section id="C11"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'C' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'C11' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="C12"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'C' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'C12' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="C13"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'C' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'C13' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- CCCCCCCCCCCCC끝 -->

<!-- 시작 -->
<section id="D11"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'D' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'D11' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<section id="D12"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'D' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'D12' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	
	</c:if>
	</c:forEach>
</div>
</section>
<!-- DDDDDDDDD끝 -->

<!-- 시작 -->
<section id="E11"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'E' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'E11' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="E12"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'E' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'E12' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="E13"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'E' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'E13' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

<!-- 시작 -->
<section id="E14"> 
<div class="subct">
	<div class="menubtn_wrap">
	<div class="menubtn_box">
	<c:forEach items="${Volist2 }" var="Vo" varStatus="status">
	<c:if test="${fn:substring(Vo.dcode,0,1) == 'E' }">
	<a href="#${Vo.dcode }"><button>${Vo.dcode_res }</button></a>
	</c:if>
	</c:forEach>
	</div>
	</div>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<c:if test="${fn:substring(vo.gcode,0,3) == 'E14' }">
	<div class="view_item">
		<div class="item_img">
		<div class="sale_con">
		20%
		</div>
		<div class="scale">
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<img alt="" src="./img/${vo.gimage }">
		</a>
		</div>
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<span class="txt_detail">${vo.gdetail }</span><br>
		<span class="txt_price1"> <fmt:formatNumber value="${vo.gprice / 0.8 }" pattern="#,###" />원</span><br>
		<span class="txt_price2"><fmt:formatNumber value="${vo.gprice }" pattern="#,###"/>원</span>
		</div>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>
<!-- 끝 -->

</div> <!-- //ct -->
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>