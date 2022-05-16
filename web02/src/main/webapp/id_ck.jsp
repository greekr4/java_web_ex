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
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	String sql = "select * from member where member_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, cid);
	rs = pstmt.executeQuery();
	if(rs.next()){
		//아이디 있음
		
		%><p><%=cid %>아이디가 중복됩니다.</p>
		<button onclick="re()">다시입력</button>

		<%
	}else{
		//아이디 없는 경우
		%><p><%=cid %>아이디를 사용하실 수 있습니다.</p>	
		<button onclick="useid()">사용하기</button> &nbsp; &nbsp; <button onclick="re()">다시입력</button>

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
		<script>
			function useid(){
			opener.document.join.member_id.readOnly = true;
			window.close();
			}
			function re(){
			opener.document.join.member_id.value = "";
			window.close();
			}
		</script>

</body>
</html>