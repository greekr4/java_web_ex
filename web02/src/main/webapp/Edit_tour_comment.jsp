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
<h2>Edit_tour_add입니다.</h2>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";
try{
	
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select * from tour_comment where TOUR_comment_uninum=?";
	pstmt = conn.prepareStatement(sql);
	int tour_comment_no = Integer.parseInt(request.getParameter("tour_comment_no")); 
	pstmt.setInt(1, tour_comment_no);
	rs = pstmt.executeQuery();
	while(rs.next()){
		%>
		
	    <form action="/web02/EditTour_commentCtrl" method="post">
	     <table>
	     	<tr>
	            <th>고유번호</th>
	            <td><input type="text" name="tour_comment_uninum" id="tour_comment_uninum" value="<%=rs.getInt("tour_comment_uninum") %>" style="display:none;" required><%=rs.getInt("tour_comment_uninum") %></td>
	        </tr>
	        <tr>
	            <th>게시판번호</th>
	            <td><input type="text" name="tour_comment_bnum" id="tour_comment_bnum" value="<%=rs.getInt("tour_comment_bnum") %>" style="display:none;" required><%=rs.getInt("tour_comment_bnum") %></td>
	        </tr>
	        <tr>
	            <th>내용</th>
	            <td><input type="text" name="tour_comment_detail" id="tour_comment_detail" 
	            value="<%=rs.getString("tour_comment_detail") %>" required></td>
	        </tr>
	        <tr>
	            <th>회원명</th>
	            <td><input type="text" name="tour_comment_name" id="tour_comment_name" value="<%=rs.getString("tour_comment_name") %>" style="display:none;" required><%=rs.getString("tour_comment_name") %></td>
	        </tr>
	        <tr>
	            <th>작성일</th>
	            <td><input type="text" name="tour_comment_tdate" id="tour_comment_tdate" value="<%=rs.getString("tour_comment_tdate") %>" style="display:none;" required><%=rs.getString("tour_comment_tdate") %></td>
	        </tr>
	        <tr>
	            <th>추천수</th>
	            <td><input type="text" name="tour_comment_thumb" id="tour_comment_thumb" value="<%=rs.getInt("tour_comment_thumb") %>" style="display:none;" required><%=rs.getInt("tour_comment_thumb") %></td>
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