<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.memberVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<memberVO> mem = (ArrayList<memberVO>) request.getAttribute("memberList");
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
width: 1600px;
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
            margin-bottom: 10px;
        }

        button:hover {
            background: #8BC34A;
            color: #ffffff;
        }
</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>

<div class="tb_wrap">
<button onclick="window.open('Send_Addmember_view','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가</button>
<table class="table table-hover">
        <thead>
          <tr class="table-primary">
          	<td>id</td>
            <td>pw</td>
            <td>name</td>
            <td>tel</td>
            <td>address</td>
            <td>money</td>
            <td>point</td>
            <td>grade</td>
            <td>number</td>
            <td>latest</td>
          </tr>
        </thead>
        <tbody>
        <%for(int i=0;i<mem.size();i++)
	{
	memberVO mem2 = new memberVO();
	mem2 = mem.get(i);
	%>
	<tr class="table-active">
	<td><a href="#"	onclick="window.open('Send_Editmember_view?member_edit_num=<%=mem2.getMember_num() %>','Edit','width=430,height=500,location=no,status=no,scrollbars=yes');"><%=mem2.getMember_id() %></a></td>
	<td><%=mem2.getMember_pw().substring(0,10)+"..." %></td>
	<td><%=mem2.getMember_name() %></td>
	<td><%=mem2.getMember_pnum() %></td>
	<td><%=mem2.getMember_address() %></td>
	<td><%=mem2.getMember_cash() %></td>
	<td><%=mem2.getMember_point() %></td>
	<td><%=mem2.getMember_grade() %></td>
	<td><%=mem2.getMember_num() %></td>
	<td><%=mem2.getMember_latest() %></td>
	</tr>

	<%} %>
           
        </tbody>
      </table>

  </div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>