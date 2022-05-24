<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shop.model.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/common.css">
<!--  -->





<style>
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  margin-top:100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}


.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #343a40;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #444a50;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}

.form .message a {
  color: #343a40;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
<div class="loginbox">
    <div class="join-page">
  <div class="form">
    <form class="join-form" action="../JoinMember" method="post">
      <input type="text" placeholder="id" name="j_id" id="j_id" /> <button type="button" onclick="idck();">Check</button>
      <input type="password" placeholder="password" name="j_pw" id="j_pw" />
      <input type="text" placeholder="name" name="j_name" id="j_name" />
      <input type="text" placeholder="nickname" name="j_nick" id="j_nick" />
      <input type="text" placeholder="tel" name="j_tel" id="j_tel" />
      <input type="text" placeholder="address" name="j_address" id="j_address" />
      <input type="text" placeholder="email" name="j_email" id="j_email" />          
      <input type="hidden" name="j_cash" id="j_cash" value="0">
      <input type="hidden" name="j_point" id="j_point" value="0">
      <input type="hidden" name="j_grade" id="j_grade" value="1">
      <button type="submit">join</button>
    </form>
    <script type="text/javascript">
    function idck() {
    var xPos = (document.body.offsetWidth/2) - (300/2); // 가운데 정렬
    var yPos = (document.body.offsetHeight/2) - (200/2);
    var ck_id = document.getElementById("j_id").value;
    var href = '../?ck_id='
    window.open(href+ck_id, "pop_name", "width=300, height=200, left="+xPos+", top="+yPos+", menubar=yes, status=yes, titlebar=yes, resizable=yes");

	
   	}
    </script>
  </div>
</div>
</div>
</div>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>