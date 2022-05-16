<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.joinbox{
width:1200px;
margin:0 auto;
}
#jointb
{
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
<div class="joinbox">
	<h2 style="text-align: center;">회원가입</h2>
    <form action="">
        <table id="jointb">
            <tbody>
                <tr>
                    <th>아이디</th><th><input type="text" name="" id=""></th>
                </tr>
                <tr>
                    <th>비밀번호</th><th><input type="password" name="" id=""></th>
                </tr>
                <tr>
                    <th>이름</th><th><input type="text" name="" id=""></th>
                </tr>
                <tr>
                    <th>핸드폰번호</th><th><input type="tel" name="" id=""></th>
                </tr>
                <tr>
                    <th>주소</th><th><input type="text" name="" id=""></th>
                </tr>
                <tr>
                   <th colspan="2"><input type="submit" value="전송"></th>
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