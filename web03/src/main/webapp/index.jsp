<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!--  -->





<style>

         * {margin: 0; padding: 0;}
        a {text-decoration: none; color: black;}
        ul { list-style: none;}
        .wrap{clear: both; width: 100%;}

#hd{width: 100%;}

.nav_wrap{

}

</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="hd.jsp"></jsp:include>
</header>
<div class="ct">
인덱스
</div>
<footer id="ft">
<jsp:include page="ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>