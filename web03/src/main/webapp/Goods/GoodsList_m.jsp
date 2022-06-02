<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>

<div class="tb_wrap">
<h1 style="text-align: center">Goods 리스트_멤버</h1>

<!-- <form method="post" action="GetMemberSearchListCtrl">
<select id="s_type" class="s_type" name="s_type">
<option value="ids">아이디</option>
<option value="names">이름</option>
</select>
<input type="text" name="s_detail"><button style="margin-left: 10px;" onclick="submit" >검색</button>
</form> -->

<table class="table table-hover">
	<thead>
		<tr class="table-primary">
		<th>번호</th>
		<th>코드</th>
		<th>이름</th>
		<th>내용</th>
		<th>사진</th>
		<th>가격</th>
		<th>수량</th>
		<th>옵션1</th>
		<th>옵션2</th>
		<th>사이즈</th>
		<th>버튼</th>
		</tr>
		<!--/GetMyPageCtrl?uid=${sid } -->
	</thead>
	<c:forEach items="${GoodsList }" var="vo" varStatus="status">
	<tr class="table-active">
	<td style="text-align: center" id="g_no">${vo.gno }</td>
	<td style="text-align: center">${vo.gcode }</td>
	<td style="text-align: center">${vo.gname }</td>
	<td style="text-align: center">${vo.gdetail }</td>
	<td style="text-align: center"><a onclick="GoViewer('${vo.gimage }');"href="#">${vo.gimage }</a></td>
	<td style="text-align: center"><fmt:formatNumber value="${vo.gprice}" pattern="#,###"/>원</td>
	<td style="text-align: center">${vo.gamount }</td>
	<td style="text-align: center">${vo.goption }</td>
	<td style="text-align: center">${vo.goption2 }</td>
	<td style="text-align: center">${vo.gsize }</td>
	<td style="text-align: center">
	<a style="color:blue;" href="#" onclick="window.open('./AddBasketCtrl?gcode=${vo.gcode }&bamount=1','hiddenframe1','width=430,height=1080,location=no,status=no,scrollbars=no');">장바구니추가</a> 
	</tr>
	</c:forEach>

</table>
<script type="text/javascript">

function GoViewer(img) {
    var xPos = (document.body.offsetWidth/2) - (300/2); // 가운데 정렬
    var yPos = (document.body.offsetHeight/2) - (200/2);
    var href = './Goods/GoodsImageViewer.jsp?img=' + img
    window.open(href, "pop_name", "width=300, height=200, left="+xPos+", top="+yPos+", menubar=yes, status=yes, titlebar=yes, resizable=yes");
}

function DelGoods() {
	
   var retVal = confirm("정말 삭제하실껀가요?");
   if( retVal == true ){
	   var href = './DelGoodsCtrl?g_no=' + document.getElementById('g_no').textContent;
	   window.open(href,'hiddenframe1','width=430,height=1080,location=no,status=no,scrollbars=no');
	   
   }	
	
}
</script>
<iframe width=0 height=0 name="hiddenframe1" style="display:none;"></iframe>
</div>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>