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
	border: 1px solid #000;
	width:32%;
	margin:5px 5px;
	height: 364px;
	overflow: hidden;
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
	line-height: 1em;
	margin:10px;
	}
	
	.item_txt p{
	margin-left:10px;
    font-size: 12px;
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
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<div class="item_img">
		<img alt="" src="./img/${vo.gimage }">
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<p>${vo.gdetail }</p>
		<p>가격 : <fmt:formatNumber value="${vo.gprice}" pattern="#,###"/>원</p>
		</div>
		</a>
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
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<div class="item_img">
		<img alt="" src="./img/${vo.gimage }">
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<p>${vo.gdetail }</p>
		<p>가격 : <fmt:formatNumber value="${vo.gprice}" pattern="#,###"/>원</p>
		</div>
		</a>
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
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<div class="item_img">
		<img alt="" src="./img/${vo.gimage }">
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<p>${vo.gdetail }</p>
		<p>가격 : <fmt:formatNumber value="${vo.gprice}" pattern="#,###"/>원</p>
		</div>
		</a>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>

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
		<a href="./GetGoodsCtrl?gcode=${vo.gcode }">
		<div class="item_img">
		<img alt="" src="./img/${vo.gimage }">
		</div>
		<div class="item_txt">
		<h2>${vo.gname }</h2>
		<p>${vo.gdetail }</p>
		<p>가격 : <fmt:formatNumber value="${vo.gprice}" pattern="#,###"/>원</p>
		</div>
		</a>
	</div>
	</c:if>
	</c:forEach>
</div>
</section>

</div> <!-- //ct -->
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>