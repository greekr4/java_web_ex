<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/common.css">
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
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
<div class="subct">
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<div class="view_item">
		<a href="./GetGoodsCtrl?gno=${vo.gno }">
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
	</c:forEach>
</div>
</div>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>