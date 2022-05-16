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
    <form action="AddMemberCtrl" method="post" name="join">
        <table id="jointb">
            <tbody>
                <tr>
                    <th>아이디</th><th><input type="text" name="member_id" id="member_id"></th><th><button type="button" onclick="idck()" class="checkId" id="checkId" name="checkId">아이디중복확인</button></th>
                </tr>
                <tr>
                    <th>비밀번호</th><th><input type="password" name="member_pw" id="member_pw"></th>
                </tr>
                <tr>
                    <th>이름</th><th><input type="text" name="member_name" id="member_name"></th>
                </tr>
                <tr>
                    <th>핸드폰번호</th><th><input type="tel" name="member_pnum" id="member_pnum"></th>
                </tr>
                <tr>
                    <th>주소</th><th><input type="text" name="member_address" id="member_address"></th>
                </tr>
                <tr>
                <tr style="display: none;">
                    <th>캐시</th><th><input type="text" name="member_cash" id="member_cash" value="0"></th>
                </tr>
                <tr>
                <tr style="display: none;">
                    <th>포인트</th><th><input type="text" name="member_point" id="member_point" value="0"></th>
                </tr>
                <tr>
                  <tr style="display: none;">
                    <th>등급</th><th><input type="text" name="member_grade" id="member_grade" value="1" ></th>
                </tr>
                <tr>
                   <th colspan="2"><input type="submit" value="전송"></th>
                </tr>
            </tbody>
        </table>
    </form>
       <script>
		function idck() {
		var member_id = document.getElementById("member_id");
		if (member_id.value == "")
		{
		alert("아이디를 입력해주세요");
		}else{
		window.open("id_ck.jsp?cid="+member_id.value,"","width=500,height=300,top=300,left=100");
		}

	}
    </script>
</div>
</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>