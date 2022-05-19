<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 For문</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
<style>
ul {float: left;
}
li {list-style: none;}
</style>

</head>
<body>

<div class="panel-heading">
<h2>For문</h2>
</div>
<div class="panel-body">
<%
int total = 0;


for (int i=0;i<11;i++){
	total += i;
	%>
	<p><%=i %></p>
	
	<%
}
%>
	<h2><%=total %></h2>
</div>

<div class="panel-heading">
<h2>While문</h2>
</div>
<div class="panel-body">
<ul>
<%
int gu1 = 1;
int gu2 = 1;
while(gu1 <= 9){
	%>
	<li><%=gu1 %> X <%=gu2 %> = <%=(gu1*gu2) %></li>
	<%
	gu2++;
	if(gu2 == 10){
		gu2 = 1;
		gu1++;
		%>
		</ul>
		<ul>
		<%
	}
}


%>
</ul>
</div>




</body>
</html>