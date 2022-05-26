<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String img = (String) request.getParameter("img"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 보기</title>
<style type="text/css">
img {
display: block;
width: 284px;
height: 180px;
margin: 0;
padding: 0;
cursor: pointer;
}

</style>
</head>
<body>
<div>
<img alt="#" src="../<%=img %>" onclick="window.close();">

</div>
</body>
</html>