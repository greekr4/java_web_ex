<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="test.css">
</head>
<body>

<div id="content">
<%
request.setCharacterEncoding("UTF-8");
String cid = request.getParameter("cid");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	Class.forName("org.mariadb.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	String sql = "select * from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, cid);
	rs = pstmt.executeQuery();
	if(rs.next()){
		//아이디 있음
		
		%><p><%=cid %>아이디가 중복됩니다.</p><%
	}else{
		//아이디 없는 경우
		%><p><%=cid %>아이디를 사용하실 수 있습니다.</p>	
		<script>
			opener.document.join.id.readOnly = true;
		</script>
		<%
		
		
	}
}catch (Exception e){
	e.printStackTrace();
}finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch (Exception e){
		e.printStackTrace();
	}
}

%>
</div>


</body>
</html>