<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>

<%
String login = "ON";
request.setCharacterEncoding("UTF-8");
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");
session.setAttribute("uid", uid);
session.setAttribute("upw", upw);
//response.sendRedirect("loginPro.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="test.css">
</head>
<body>
<div id="wrap">
<header id="hd">
	<%@ include file="menu.jsp" %>
</header>
<div id="content">
<h2>로그인</h2>
<p>정보</p>
<p>ID : <%=uid %></p>
<p>PW : <%=upw %></p>
<br><br><br><br><br><br>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>