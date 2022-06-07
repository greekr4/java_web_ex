<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shop.model.MemberDAO" %>

<%
String gcode = request.getParameter("gcode"); 
request.setAttribute("gcode", gcode);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
<!--  -->
<script src="../js/jquery-latest.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/ft.css">
<!--  -->



<style>
html {overflow:hidden;} 
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

<div class="ct">
<div class="loginbox">
    <div class="AddGoodsForm">
  <div class="form">
    <form class="AddGoodsForm" id="AddCommentCtrl" action="../AddCommentCtrl" method="post">
		<input type="text" placeholder="상품 이름" name="gcode" id="gcode" value="${gcode }" style="text-align: center;" readonly/>
       		 별점 : <select name="thumb" id="thumb">
	            <option value="5">5점</option>
	            <option value="4">4점</option>
	            <option value="3">3점</option>
	            <option value="2">2점</option>
	           	<option value="1">1점</option>
	           	<option value="0">0점</option>
            </select>      
            <br><br>
      <input type="text" placeholder="내용을 입력해주세요" name="cdetail" id="cdetail" required/>
      <input type="hidden" name="cid" value="${sid }">
      <button type="submit">Add</button>
    </form>

  </div>
</div>
</div>
</div>

</div>
</body>
</html>