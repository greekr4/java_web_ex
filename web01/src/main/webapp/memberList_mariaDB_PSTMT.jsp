<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    



<%-- <%@ 디렉티브 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록(마리아PSTMT)</title>
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
	Connection conn = null;	//연결 정보를 저장하고, 연결할 객체
	Statement stmt = null;	//연결 상태를 유지할 객체
	PreparedStatement pstmt = null;
	ResultSet result = null; 	//불어온 DB결과를 저장할 곳
	try {
		/* 드라이버로딩 = jdbc:mariadb://localhost:포트번호/데이터베이스명 */
		Class.forName("org.mariadb.jdbc.Driver");
		String driver = "jdbc:mariadb://localhost:3308/company";
		String dbId = "root";
		String dpPw = "1234";
		conn = DriverManager.getConnection(driver, dbId, dpPw);
		
		String uid = "gill";
		String upw = "3344";
		
		/* 		
		Statement 활용
		stmt = conn.createStatement();
		String sql = "select * from member where id='"+uid+"' and pw='"+upw+"'";
		result = stmt.executeQuery(sql); 
		*/
		
		
		// PreparedStatement 활용
		String sql2 = "select * from member where id=? and pw=?";
		pstmt = conn.prepareStatement(sql2);
		pstmt.setString(1, uid);
		pstmt.setString(2, upw);
		result = pstmt.executeQuery();
		
				

		
		
while(result.next()){
	String id = result.getString("id");
	String pw = result.getString("pw");
	String name = result.getString("name");
	String phone = result.getString("phone");
	String address = result.getString("address");
%>
	<tr>
		<td><%=id %></td>
		<td><%=pw %></td>
		<td><%=name %></td>
		<td><%=phone %></td>
		<td><%=address %></td>
	</tr>
<%
}
} catch(Exception e){
e.printStackTrace();
} finally {
try {
	result.close();
	pstmt.close();
	conn.close();
} catch(Exception e) {
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