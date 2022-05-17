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
try{
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select * from notice where NOTICE_UNINO=?";
	pstmt = conn.prepareStatement(sql);
	int notice_edit_no = Integer.parseInt(request.getParameter("notice_edit_no")); 
	pstmt.setInt(1, notice_edit_no);
	rs = pstmt.executeQuery();
	while(rs.next()){
		%>
		<h2>Edit_tour_add입니다.</h2>
	    <form action="/web02/EditNoticeCtrl" method="post">
	     <table>
	     	<tr>
	            <th>고유번호</th>
	            <td><input type="text" name="notice_unino" id="notice_unino" value="<%=rs.getString("notice_unino") %>" style="display:none;" required>
	            <%=rs.getString("notice_unino") %>
	            </td>
	        </tr>
	        <tr>
	            <th>공지상태</th>
	            <td>
	            	<select name="notice_state" id="notice_state">
		            <option value="1">공지ON</option>
		            <option value="2">공지OFF</option>
	        	</select>
	            </td>
	        </tr>
	        <tr>
	            <th>작성자</th>
	            <td><input type="text" name="notice_writer" id="notice_writer" value="<%=rs.getString("notice_writer") %>" style="display:none;" required>
	            <%=rs.getString("notice_writer") %>
	            </td>
	        </tr>
	        <tr>
	            <th>제목</th>
	            <td><input type="text" name="notice_tit" id="notice_tit" 
	            value="<%=rs.getString("notice_tit") %>" required></td>
	        </tr>
	        <tr>
	            <th>내용</th>
	            <td><textarea name="notice_detail" id="notice_detail" cols="30" rows="10" required><%=rs.getString("notice_detail") %></textarea></td>
	        </tr>
	        <tr>
	            <th>공지시작일</th>
	            <td><input type="date" name="notice_from_date" id="notice_from_date"
	            value="<%=rs.getString("notice_from_date").substring(0,10) %>" ></td>
	        </tr>
	        <tr>
	            <th>공지끝</th>
	            <td><input type="date" name="notice_to_date" id="notice_to_date"
	            value="<%=rs.getString("notice_to_date").substring(0,10) %>"></td>
	        </tr>
	        <tr>
	            <th>작성일</th>
	            <td><input type="text" name="notice_reg_date" id="notice_reg_date" value="<%=rs.getString("notice_reg_date") %>" style="display:none;" required>
	            <%=rs.getString("notice_reg_date") %>
	            </td>
	        </tr>

	     </table>
	            <input type="submit" value="전송">

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