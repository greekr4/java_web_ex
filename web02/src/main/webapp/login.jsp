<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
.loginbox{
width:1200px;
margin:0 auto;
text-align: center;
}
#logintb{
margin:0 auto;
}
</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">
<div class="loginbox">
	<h2>로그인</h2>
    <form action="LoginPro" method="post">
        <table id="logintb">
            <tbody>
                <tr>
                    <th>아이디</th><th><input type="text" name="l_id" id="l_id"></th>
                </tr>
                <tr>
                    <th>비밀번호</th><th><input type="password" name="l_pw" id="l_pw"></th>
                </tr>
                <tr>
                    <th colspan="2"><input type="submit" value=" 전송 "></th>
                </tr>
            </tbody>
        </table>


    </form>
    </div>
</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>