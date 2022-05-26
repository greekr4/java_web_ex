<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String img = (String) request.getParameter("img"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 보기</title>

</head>
<body>
<div>
<img alt="#" src=".<%=img %>">

</div>
</body>
</html>