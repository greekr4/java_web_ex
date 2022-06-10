<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태균낚시마트</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/ft.css">
<!--  -->





<style>


.table {
  --bs-table-bg: transparent;
  --bs-table-accent-bg: transparent;
  --bs-table-striped-color: #fff;
  --bs-table-striped-bg: rgba(0, 0, 0, 0.05);
  --bs-table-active-color: #000;
  --bs-table-active-bg: rgba(0, 0, 0, 0.1);
  --bs-table-hover-color: #555;
  --bs-table-hover-bg: rgba(0, 0, 0, 0.075);
  width: 100%;
  margin-bottom: 1rem;
  color: #fff;
  vertical-align: top;
  border-color: #444;
  margin-left: auto; 
  margin-right: auto;
  font-size: 0.8em;
}

.table > :not(caption) > * > * {
  padding: 0.5rem 0.5rem;
  background-color: var(--bs-table-bg);
  border-bottom-width: 1px;
  box-shadow: inset 0 0 0 9999px var(--bs-table-accent-bg);
}

.table > tbody {
  vertical-align: inherit;
}

.table > thead {
  vertical-align: bottom;
}

.table > :not(:first-child) {
  border-top: 2px solid currentColor;
}

.caption-top {
  caption-side: top;
}

.table-sm > :not(caption) > * > * {
  padding: 0.25rem 0.25rem;
}

.table-bordered > :not(caption) > * {
  border-width: 1px 0;
}

.table-bordered > :not(caption) > * > * {
  border-width: 0 1px;
}

.table-borderless > :not(caption) > * > * {
  border-bottom-width: 0;
}

.table-borderless > :not(:first-child) {
  border-top-width: 0;
}

.table-striped > tbody > tr:nth-of-type(odd) > * {
  --bs-table-accent-bg: var(--bs-table-striped-bg);
  color: var(--bs-table-striped-color);
}

.table-active {
  --bs-table-accent-bg: var(--bs-table-active-bg);
  color: #000;
}

.table-hover > tbody > tr:hover > * {
  --bs-table-accent-bg: var(--bs-table-hover-bg);
  color: var(--bs-table-hover-color);
}

.table-primary {
  --bs-table-bg: #375a7f;
  --bs-table-striped-bg: #416285;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #4b6b8c;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #466689;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #4b6b8c;
}

.table-secondary {
  --bs-table-bg: #444444;
  --bs-table-striped-bg: #4d4d4d;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #575757;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #525252;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #575757;
}

.table-success {
  --bs-table-bg: #00bc8c;
  --bs-table-striped-bg: #0dbf92;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #1ac398;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #13c195;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #1ac398;
}

.table-info {
  --bs-table-bg: #3498db;
  --bs-table-striped-bg: #3e9ddd;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #48a2df;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #43a0de;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #48a2df;
}

.table-warning {
  --bs-table-bg: #f39c12;
  --bs-table-striped-bg: #f4a11e;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #f4a62a;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #f4a324;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #f4a62a;
}

.table-danger {
  --bs-table-bg: #e74c3c;
  --bs-table-striped-bg: #e85546;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #e95e50;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #e9594b;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #e95e50;
}

.table-light {
  --bs-table-bg: #adb5bd;
  --bs-table-striped-bg: #b1b9c0;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #b5bcc4;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #b3bbc2;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #b5bcc4;
}

.table-dark {
  --bs-table-bg: #303030;
  --bs-table-striped-bg: #3a3a3a;
  --bs-table-striped-color: #fff;
  --bs-table-active-bg: #454545;
  --bs-table-active-color: #fff;
  --bs-table-hover-bg: #404040;
  --bs-table-hover-color: #fff;
  color: #fff;
  border-color: #454545;
}

.table-responsive {
  overflow-x: auto;
  -webkit-overflow-scrolling: touch;
}

/* 여기까지 */
.tb_wrap{
width: 1600px;
margin: 30px auto;
}


button {
display: inline-block;
padding: 3px 6px;
background: rgb(220, 220, 220);
font-weight: bold;
color: rgb(120, 120, 120);
border: none;
outline: none;
border-radius: 3px;
cursor: pointer;
transition: ease .3s;
}

button:hover {
background: #8BC34A;
color: #ffffff;
}
.btn_box{
width: 100%;
margin: 0 auto;
}
th{
text-align: center;
}

a {
color: blue;
cursor: pointer;
}

.ct_wrap{
clear:both;
}
img{
display: block;
width: 100%;
}
.admin_wrap{
width: 100%;
margin-top: 50px;
}
.flex_box{
display: flex;
}
.left_menu{
margin-left: 30px;
width: 10%;
}
.left_menu li{
margin-left: 1em;
}
.main{
width: 80%;
}
.right_menu{
width: 10%;
}

</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
	<div class="ct_wrap">
		<div class="admin_wrap">
			<div class="flex_box">
				<div class="left_menu">
					<jsp:include page="../admin_menu.jsp"></jsp:include>
				</div>
				<div class="main">
<div class="loginbox">
    <div class="login-page">
  <div class="form">
   
      <table style="width: 100%; margin: 0 auto;">
      <thead>
      <tr style="border-bottom: 1px solid #000;">
      <th>발신자</th>
      <th>수신자</th> 
      <th>내용</th>
      <th>시간</th>
      <th>answer</th>
      <th>-----------</th>
      </tr>
      </thead>
      <tbody>
      		  <c:forEach items="${sendedlist }" var="Vo" varStatus="status" begin="0" end="9" >
		      <c:set var="min" value="${status.index }"/>
		      </c:forEach>
      
      
      		  <c:if test="${min < 9 }">
		      	<c:forEach begin="1" end="${9 - min }">
		     	<tr>
		      		<td>-</td>
 		      		<td>-</td>
		      		<td>-</td>
		      		<td>-</td>
		      		<td>-</td>
		      		<td>-</td>
		      </tr>
		      	</c:forEach>

		      </c:if>
      
		      <c:forEach items="${sendedlist }" var="Vo" varStatus="status" begin="0" end="9" >
		      <tr>
		       
		      	<td>${Vo.sendid }</td>
 		      	<td>${Vo.reqid }</td>
		      	<td>${Vo.cdetail }</td>
		      	<td>${Vo.cdate }</td>
		      	<td>${Vo.answer_val }</td>
		      	<td>
		      	<form class="login-form" action="SendChatCtrl" method="post">
		      	<c:if test="${Vo.sendid eq 'admin' }">
		      	<input type="text" value="${Vo.reqid }" name = "reqid">
		      	</c:if>
		      	<c:if test="${Vo.sendid ne 'admin' }">
		      	<input type="text" value="${Vo.sendid }" name = "reqid">
		      	</c:if>
		      	
     			<input type="text" placeholder="내용" name="cdetail" id="cdetail" />
      			<button type="submit">전송</button>
      			 </form>
     		 </td>
		      </tr>
		      </c:forEach>

      </tbody>
      </table>
    <script type="text/javascript">

    </script>
   
  </div>
</div>
</div>
				</div>
				<div class="right_menu">
				
				</div>
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