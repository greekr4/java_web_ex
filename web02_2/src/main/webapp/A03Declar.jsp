<%@page import="org.apache.tomcat.util.net.ApplicationBufferHandler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
//선언문 <%! ~~
public int aaa = 1234123123;

public int fn1(int x,int y){
	return x*y;
}

%>

<p>함수 fn1(2,5)의 결과</p>
<p><%=fn1(2,5) %></p>
<br>
<p>전역 변수 aaa?</p>
<p><%=aaa %></p>
<br>
<p><button onclick="aaafn()">aaa = 123123으로 변경</button></p>
<p><button onclick="aaafn2()">되돌리기</button></p>
<p><input type="text" value="<%=aaa %>" id="dd"></p>
<br>
<p>경로</p>
<p><%=application.getRealPath("A03Declar.jsp") %></p>


<script>
function aaafn(){
	<% aaa = 123123; %>
	var a = document.getElementById("dd");
	dd.value = <%=aaa %>
}
function aaafn2(){
	<% aaa = 1234123123; %>
	var a = document.getElementById("dd");
	dd.value = <%=aaa %>
}
</script>

</body>
</html>