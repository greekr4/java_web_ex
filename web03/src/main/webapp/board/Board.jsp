<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!--  -->
<style>
*{
margin: 0;
padding: 0;
}
ul, li{
list-style: none;
}
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
width: 1200px;
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
.board_wrap{
width: 1200px;
overflow: hidden;
margin: 0 auto;
border-top: 2px solid #000;
}
.board_wrap h4{
font-size: 24px;
line-height: 55px;
margin-left: 1em;
}
.board_ul{
	padding: 10px 20px 5px 20px;
    font-size: 1em;
    background: #f8f8f8;
    height: 25px;
    border-top: 1px solid #bbb;
    border-bottom: 1px solid #bbb;
    padding-bottom: 30px;
}
.board_ul li{
	position: relative;
    float: left;
    margin: 0 20px 5px 0;
}
.board_wrap strong{
margin-right: 1em;
}
.detailbox{
margin-top: 10px;
margin-bottom: 10px;
border-bottom: 1px solid #bbb;
min-height: 200px;
}
.detailbox p {
margin-left: 1em;
}

</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
<!-- 회원 -->
<div class="board_wrap" style="margin-top:20px;">
<h4>${BoardVo.tit }</h4>
	<ul class="board_ul">
		<li>
		
			<strong>작성자</strong><span class="user">${BoardVo.writer }</span>
		</li>
		<li>
			<strong>작성일</strong><span class="cdate">${BoardVo.regdate }</span>
		</li>
	</ul>
	<div class="detailbox">
	<p>${BoardVo.con }</p>
	
	</div>

</div>

<!-- 관리자 -->
<br>
<h3 style="text-align: center;">-----관리자-----</h3>


<form action="EditBoardCtrl" method="post">
<div class="board_wrap" style="margin-top:20px;">
<h4><input type="text" value="${BoardVo.tit }" name="tit"  ></h4>
	<ul class="board_ul">
		<li>
			<strong>작성자</strong><span class="user"><input type="text" value="${BoardVo.writer }" name="writer"></span>
		</li>
		<li>
			<strong>작성일</strong><span class="cdate">${BoardVo.regdate }</span>
		</li>
		<li>
			<strong>공개/비공개</strong><span class="lock_span">
			<select name="lock_post" id="lock_post">
			<option value="1">공개</option>
			<option value="2">비공개</option>
			</select>
			
			<script>
			var lpv = ${BoardVo.lock_post };
			if (lpv == 1){
			$("#lock_post").val("1").prop("select", true);
			}else{
			$("#lock_post").val("2").prop("select", true);
			}
			
			
			</script>
			</span>
		</li>
	</ul>
	<div class="detailbox">
	<p>
	<textarea name="con" id="" cols="150" rows="10">${BoardVo.con }</textarea>
	
	
	
	</p>
	
	</div>
	<input type="hidden" value="${BoardVo.no }" name="no">
	<button type="submit">수정</button>
	<button type="button" onclick="location.href='DelBoardCtrl?no=${BoardVo.no }';">삭제</button>
</div>
</form>



</div>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>


</body>
</html>