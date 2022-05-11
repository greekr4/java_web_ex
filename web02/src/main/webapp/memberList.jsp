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
<h2>여기는 memberList.jsp입니다.</h2>


<table id="tb">
	<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>연락처</th><th>주소</th><th>보유머니</th><th>보유포인트</th><th>등급번호</th><th>회원번호</th><th>최종접속일</th></tr>


<%for(int i=0;i<mem.size();i++)
	{
	memberVO mem2 = new memberVO();
	mem2 = mem.get(i);
	%>
	<tr><td><%=mem2.getMember_id() %></td><td><%=mem2.getMember_pw() %></td><td><%=mem2.getMember_name() %></td><td><%=mem2.getMember_pnum() %></td><td><%=mem2.getMember_adress() %></td><td><%=mem2.getMember_cash() %></td><td><%=mem2.getMember_point() %></td><td><%=mem2.getMember_grade() %></td><td><%=mem2.getMember_num() %></td><td><%=mem2.getMember_latest() %></td></tr>

	<%} %>
</table>
</body>
</html>