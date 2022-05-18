<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_viewVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_viewVO> Volist = (ArrayList<tour_viewVO>) request.getAttribute("tour_viewList");
%>   

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 여기부터 */
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
width: 1800px;
margin: 30px auto;
}


button {
display: inline-block;
padding: 12px 24px;
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
.tb_wrap img{
display:block;
width:100px;
}

</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<h2>여기는 tour_viewList.jsp입니다.</h2>
<div class="tb_wrap">
<button style="margin-bottom: 10px;" onclick="window.open('Send_AddTour_view','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가</button>
<table class="table table-hover">
	<thead>
		<tr class="table-primary">
		<th>no</th>
		<th>pid</th>		
		<th style="width: 100px;">대분류</th>
		<th>소분류</th>
		<th>이름</th>
		<th>주소</th>
		<th>연락처</th>
		<th>썸네일</th>
		<th>썸네일경로</th>
		<th style="width: 200px;">버튼</th>
	</tr>
	</thead>


<%for(int i=0;i<Volist.size();i++)
	{
	//tour_viewVO mem2 = new tour_viewVO();
	tour_viewVO Vo = Volist.get(i);
	%>
	<tr class="table-active">
		<td><%=Vo.getTour_num() %></td>
		<td><%=Vo.getTour_id() %></td>		
		<td><%=Vo.getCcode_res() %></td>	
		<td><%=Vo.getDcode_res() %></td>	
		<td><a href="/web02/GetboardMoreCtrl?pidno=<%=Vo.getTour_id() %>"><%=Vo.getTour_name() %></a></td>	
		<td><%=Vo.getTour_address() %></td>	
		<td><%=Vo.getTour_tel() %></td>	
		<td><img src="<%=Vo.getTour_img1() %>" alt="<%=Vo.getTour_name() %>"></td>	
		<td><%=Vo.getTour_img1() %></td>
		<th colspan="4">
		<button style="margin:12px;" onclick="window.open('Send_EditTour_view?tour_edit_no=<%=Vo.getTour_num() %>','수정','width=430,height=500,location=no,status=no,scrollbars=yes');">수정</button>
		<button onclick="window.open('DelTour_viewCtrl?tour_del_no=<%=Vo.getTour_num() %>','삭제','width=430,height=500,location=no,status=no,scrollbars=yes');">삭제</button>
		</td>
	</tr>

	<%} %>
</table>
</div>


<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>