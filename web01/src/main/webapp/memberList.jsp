<%@page import="org.apache.catalina.startup.ConnectorCreateRule"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    



<%-- <%@ 디렉티브 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="test.css">
<style>
td{padding-right: 50px;}

</style>
</head>
<body>
<div id="wrap">
<header id="hd">
	<%@ include file="menu.jsp" %>
</header>
<div id="content">
<h2>회원목록</h2>
<table class="table">
<tr>
<td>아이디</td>
<td>비번</td>
<td>이름</td>
<td>전화번호</td>
<td>주소</td>
</tr>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
try{
	Class.forName("org.mariadb.jdbc.Driver");	//드라이브 로딩 (대문자 Driver)
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	pstmt = conn.prepareStatement("select * from member");	//on
	rs = pstmt.executeQuery();	//SQL 실행
	
	while(rs.next()){	//저장된 rs(결과셋)를 한 레코드씩 출력
		%>
		<tr>
			<td><%=rs.getString("id") %> </td>
			<td><%=rs.getString("pw") %> </td>
			<td><%=rs.getString("name") %> </td>
			<td><%=rs.getString("phone") %> </td>
			<td><%=rs.getString("address") %> </td>
		</tr>
		<%
	}
}catch(Exception e){
	e.printStackTrace();
} finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
	e.printStackTrace();
	}
	
}
%>
 </table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>