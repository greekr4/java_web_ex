<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  -->
<script src="../js/jquery-latest.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/common.css">
<!--  -->





<style>
        .gbox{
            width: 1000px;
            margin: 0 auto;
      
        }
        .gimg{
            float: left;
            width: 40%;
            

        }
        .gimg img{
            display: block;
            width: 100%;
        }
        .gtxt_wrap{
            float: left;
            width: 60%;
            background-color: aqua;
        }
        .gcon{
            margin-left: 100px;
        }
        
button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #343a40;
  width: 60%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
button:hover,.form button:active,.form button:focus {
  background: #444a50;
}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
    <div class="gbox">
        <div class="gimg">
            <img src="../img/1.jpg" alt="">
        </div>
        <div class="gtxt_wrap">
            <div class="gcon">
            <h4>잭슨 QU-On</h4>
            <p>디테일</p>
            <p>가격</p>
            <p>남은 수량</p>
            <p>옵션
            <select name="" id="">
                <option value="">1</option>
            </select>
             </p>
             <p>옵션
             <select name="" id="">
             <option value="">1</option>
            </select>
            </p>
            <p><button>주문하기</button></p>
            <p><button>장바구니</button></p>
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