<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="test.css">
</head>
<body>
<div id="wrap">
<header id="hd">
	<%@ include file="menu.jsp" %>
</header>
<div id="content">
<h2>여기는 컨텐츠</h2>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>