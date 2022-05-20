<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% String zzz = (String) pageContext.getAttribute("zz"); 
       String xxx = "xx";
       pageContext.setAttribute("xxx", xxx);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h4>include.jsp입니다.</h4>
<p>${zz}</p>
<p>${xxx}</p>
<p><%=zzz %></p>




</body>
</html>