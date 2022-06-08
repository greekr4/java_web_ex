<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태균낚시마트</title>
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

a {
color: blue;
cursor: pointer;
}

.ct_wrap{
clear:both;
}
img{
display: block;
width: 100%;
}
.admin_wrap{
width: 100%;
margin-top: 50px;
}
.flex_box{
display: flex;
}
.left_menu{
margin-left: 30px;
width: 10%;
}
.left_menu li{
margin-left: 1em;
}
.main{
width: 80%;
}
.right_menu{
width: 10%;
}

</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="hd.jsp"></jsp:include>
</header>
<div class="ct">
	<div class="ct_wrap">
		<div class="admin_wrap">
			<div class="flex_box">
				<div class="left_menu">
				<jsp:include page="admin_menu.jsp"></jsp:include>
				</div>
				<div class="main">
					메인 
				</div>
				<div class="right_menu">
				
				</div>
			</div>
		</div>
	</div>
</div>

<footer id="ft">
<jsp:include page="ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>