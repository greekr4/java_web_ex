<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int tot = (int)application.getAttribute("tot");
int avg = tot/2;
String hak = "F";
if (avg > 90) {
	hak="A";
	} else if (avg > 80){
		hak="B";
	} else if (avg > 70){
		hak="C";
	} else if (avg > 60){
		hak="D";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>학점</h2>

<p>당신의 학점은</p>
<p><%=hak %></p>

</body>
</html>