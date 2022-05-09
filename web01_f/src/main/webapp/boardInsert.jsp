<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/normalize.css">
<link rel="stylesheet" href="common.css">
<title>메인 페이지</title>
</head>
<body>
<div id="wrap">
<header id="hd">
	<%@ include file="nav.jsp" %>
</header>
<%if(sid.equals("admin")){ %>
<div id="content">
<h2>글 작성</h2>
<form id="frm2" name="join" action="boardInsertPro.jsp" method="post" onsubmit="return lengck(this);">
<table>
	<tr><td>제목</td><th><input type="text" name="titletxt" id="titletxt"></th></tr>
	<tr><td>내용</td><th><textarea name="posttxt" name="posttxt" id="posttxt" cols="30" rows="10"></textarea></th></tr>
	<tr><td><button type="submit" class="btn btn-primary" id="submit_btn" name="submit_btn">글쓰기</button></td></tr>
</table>
</div>
<script>
function lengck(f){
var leng1 = f.posttxt.value.length;
	if (leng1 >= 200){
		alert("200자 이하");
		return false	
	}	
}
</script>
<%} else{ %>
<h1>관리자 계정이 아닙니다!!!!!!!!!</h1>
<%} %>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>