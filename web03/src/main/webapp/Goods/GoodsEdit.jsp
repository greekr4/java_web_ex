<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shop.model.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/ft.css">
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
    <div class="AddGoodsForm">
  <div class="form">
    <form class="AddGoodsForm" id="AddGoodsForm" action="./EditGoodsCtrl" method="post">
      <input type="text" name="g_no" id="g_no" value="${GoodsVo.gno }" readonly >
      <input type="text" placeholder="상품코드" name="g_code" id="g_code" value="${GoodsVo.gcode }"/>
      <input type="text" placeholder="상품이름" name="g_name" id="g_name" required value="${GoodsVo.gname }"/>
      <input type="text" placeholder="상품설명" name="g_detail" id="g_detail" required value="${GoodsVo.gdetail }"/>
      <input type="text" placeholder="이미지경로" name="g_image" id="g_image" required value="${GoodsVo.gimage }"/>
      <input type="text" placeholder="가격" name="g_price" id="g_price" required value="${GoodsVo.gprice }"/>
      <input type="text" placeholder="수랑" name="g_amount" id="g_amount" required value="${GoodsVo.gamount }"/>
      <input type="text" placeholder="옵션1" name="g_option" id="g_option" required value="${GoodsVo.goption }"/>   
      <input type="text" placeholder="옵션2" name="g_option2" id="g_option2" required value="${GoodsVo.goption2 }"/>   
      <input type="text" placeholder="사이즈" name="g_size" id="g_size" required value="${GoodsVo.gsize }"/>   
      <button type="submit">Edit</button>
    </form>
    <script type="text/javascript">
       
    
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