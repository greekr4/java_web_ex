<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="test.css">
<title>메인 페이지</title>
</head>
<body>
<div id="wrap">
<header id="hd">
	<%@ include file="menu.jsp" %>
</header>
<%if(sid.equals("admin")){
request.setCharacterEncoding("UTF-8");
int bno = Integer.parseInt(request.getParameter("bno"));
%>
<div id="content">
<h2>글 작성</h2>
<form id="frm2" name="join" action="boardUpdatePro.jsp" method="post" onsubmit="return lengck(this);">
<table>
	<tr><td>글번호</td><th><input type="text" name="bno" id="bno" value="<%=bno %>" readonly></th></tr>
	<tr><td>제목</td><th><input type="text" name="titletxt" id="titletxt" ></th></tr>
	<tr><td>내용</td><th><textarea name="posttxt" name="posttxt" id="posttxt" cols="30" rows="10"></textarea></th></tr>
	<tr><td><button type="submit" class="btn btn-primary" id="submit_btn" name="submit_btn">수정하기</button></td></tr>
</table>
<script>
function lengck(f){
var leng1 = f.posttxt.value.length;
	if (leng1 >= 200){
		alert("200자 이하");
		return false	
	}
	
	
}
</script>
</div>

<%} else{ %>
<h1>관리자 계정이 아닙니다!!!!!!!!!</h1>
<%} %>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>


</div>
</body>
</html>