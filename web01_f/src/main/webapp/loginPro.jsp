<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String name = "";
	String id = "";
	String pw = "";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uid);
		rs = pstmt.executeQuery();
		if(rs.next()){
			//아이디 있음
			id = rs.getString("id");
			pw = rs.getString("pw");
			name = rs.getString("name");
			if(id.equals(uid) && pw.equals(upw)){
				//아이디와 비밀번호 둘 다 있음
				session.setAttribute("uid", uid);
				session.setAttribute("upw", upw);
				session.setAttribute("uname", name);
				out.println("<script>alert('로그인 성공');</script>");
				response.sendRedirect("index.jsp");
			}else{
				//비밀번호가 틀렸을 경우
				out.println("<script>alert('비밀번호가 틀렸습니다.');</script>");
				response.sendRedirect("login.jsp");
			}
		}else{
			//아이디 없는 경우
			out.println("<script>alert('아이디가 없습니다.');</script>");
			response.sendRedirect("login.jsp");
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


<!--   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="test.css">
</head>
<body>
<div id="wrap">
<header id="hd">
</header>
<div id="content">

<h2>로그인</h2>
<p>입력한 회원 정보</p>
<p>uid : <%=uid %></p>
<p>upw : <%=upw %></p>
<br><br>
<p>DB 회원 정보</p>
<p>ID : <%=id %></p>
<p>PW : <%=pw %></p>
<p>이름 : <%=name %></p>
<br><br><br><br><br><br>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>

-->