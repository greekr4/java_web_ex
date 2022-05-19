<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int tot = (int)application.getAttribute("tot");
String tot_res = "불합격";
if (tot > 180) tot_res="합격";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>합격/불합격</h2>
<p>당신은 <%=tot_res %></p>

</body>
</html>