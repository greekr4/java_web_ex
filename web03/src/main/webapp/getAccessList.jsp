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
<link rel="stylesheet" href="./css/common.css">
<!--  -->





<style>
th{
margin:10px;
}
td{
margin:10px;
}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="hd.jsp"></jsp:include>
</header>
<div class="ct">

				<table>
					<tr>
						<th>no</th>
						<th>request_uri</th>
						<th>remote_address</th>
						<th>server_name</th>
						<th>session_id</th>
						<th>response_time</th>
						<th>reg_date</th>
					</tr>
					<c:forEach items="${list }" var="vo" varStatus="status">
					<tr>
					<td class="item1">${vo.no }</td>
					<td class="item2">${vo.request_uri }</td>
					<td class="item3">${vo.remote_address }</td>
					<td class="item4">${vo.server_name }</td>
					<td class="item5">${vo.session_id }</td>
					<td class="item6">${vo.response_time }</td>
					<td class="item7">${vo.reg_date }</td>
					</tr>
						</c:forEach>
				</table>
</div>
<footer id="ft">
<jsp:include page="ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>