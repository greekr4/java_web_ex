<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";
int member_edit_num =  Integer.parseInt(request.getParameter("member_edit_num"));
try{
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select * from member where member_num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, member_edit_num);
	rs = pstmt.executeQuery();
	while(rs.next()){
		%>
		
		<h2>Edit_member_view입니다.</h2>
	    <form action="" method="post">
	     <table>
	     	<tr>
	            <th>고유번호</th>
	            <td><input type="text" name="member_num" id="member_num" value="<%=rs.getInt("member_num") %>" style="display:none;" required><%=rs.getInt("member_num") %></td>
	        </tr>
	        <tr>
	            <th>아이디</th>
	            <td><input type="text" name="member_id" id="tour_edit_id" value="<%=rs.getString("member_id") %>" required></td>
	        </tr>
	        <tr>
	            <th>비밀번호</th>
	            <td><input type="text" name="member_pw" id="member_pw" 
	            value="<%=rs.getString("member_pw") %>" required></td>
	        </tr>
	        <tr>
	            <th>이름</th>
	            <td><input type="text" name="member_name" id="member_name" 
	            value="<%=rs.getString("member_name") %>" required></td>
	        </tr>
	        <tr>
	            <th>전화번호</th>
	            <td><input type="text" name="member_pnum" id="member_pnum" 
	            value="<%=rs.getString("member_pnum") %>" required></td>
	        </tr>
	        <tr>
	            <th>주소</th>
	            <td><input type="text" name="member_address" id="member_address"
	            value="<%=rs.getString("member_address") %>" ></td>
	        </tr>
	        <tr>
	            <th>캐쉬</th>
	            <td><input type="text" name="member_cash" id="member_cash"
	            value="<%=rs.getInt("member_cash") %>"></td>
	        </tr>
	        <tr>
	            <th>포인트</th>
	            <td><input type="text" name="member_point" id="member_point"
	            value="<%=rs.getInt("member_point") %>"></td>
	        </tr>
	        <tr>
	            <th>등급</th>
	            <td><input type="text" name="member_grade" id="member_grade"
	            value="<%=rs.getInt("member_grade") %>"></td>
	        </tr>
	        <tr>
	            <th>최종접속일</th>
	            <td><label><%=rs.getString("member_latest") %></label></td>
	        </tr>

	     </table>
	            <input type="submit" value="전송" onclick="javascript: form.action='/web02/EditmemberCtrl';">
	            <input type="submit" value="삭제" onclick="javascript: form.action='/web02/DeletememberCtrl';">
	            

	    </form>
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

</body>
</html>