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
#tb{
border-collapse: collapse;
width:1800px;
margin: 0 auto;
display: table;
line-height: 35px;

}
#tb td{
width : 200px;
border-bottom: 1px solid #000;
}
#tb th{
border-bottom: 1px solid #000;
border-top: 1px solid #000;
}

</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>



<h2>여기는 memberList.jsp입니다.</h2>


<table id="tb">
	<button onclick="window.open('Send_Addmember_view','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가</button>
	<tr><th>아이디</th><th class="pwline">비밀번호</th><th>이름</th><th>연락처</th><th>주소</th><th>보유머니</th><th>보유포인트</th><th>등급번호</th><th>회원번호</th><th>최종접속일</th></tr>


<%for(int i=0;i<mem.size();i++)
	{
	memberVO mem2 = new memberVO();
	mem2 = mem.get(i);
	%>
	<tr><td><a href=""	onclick="window.open('Send_Editmember_view?member_edit_num=<%=mem2.getMember_num() %>','Edit','width=430,height=500,location=no,status=no,scrollbars=yes');"
	><%=mem2.getMember_id() %></a></td><td class="pwline"><%=mem2.getMember_pw().substring(0,10)+"..." %></td><td><%=mem2.getMember_name() %></td><td><%=mem2.getMember_pnum() %></td><td><%=mem2.getMember_address() %></td><td><%=mem2.getMember_cash() %></td><td><%=mem2.getMember_point() %></td><td><%=mem2.getMember_grade() %></td><td><%=mem2.getMember_num() %></td><td><%=mem2.getMember_latest() %></td></tr>

	<%} %>
</table>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>