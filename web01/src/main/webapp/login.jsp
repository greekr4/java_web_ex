<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="test.css">
</head>
<body>
<div id="wrap">
<header id="hd">
	<%@ include file="menu.jsp" %>
</header>
<div id="content">
<h2>로그인</h2>
<form id="frm1" name="login" action = "loginPro.jsp" method="post">
<ul>
<li><input type="text" class="indata" id="uid" name="uid" placeholder="id" required 
            oninvalid="this.setCustomValidity('아이디를 입력해주세요.')"
            oninput = "setCustomValidity('')"
            autofocus="autofocus">
            </li>
<li><input type="password" class="indata" id="upw" name="upw" placeholder="pw" required 
           oninvalid="this.setCustomValidity('비밀번호를 입력해주세요.')"
           oninput = "setCustomValidity('')">
           </li>
<li class="btn_frame">
<input type="submit" value="login" id="submit" calss="btn">
<input type="reset" value="reset" id="reset" calss="btn">
</li>
</ul>

</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>