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
	sql = "select * from tour_board where TOUR_board_NUM=?";
	pstmt = conn.prepareStatement(sql);
	int tour_board_no = Integer.parseInt(request.getParameter("board_edit_no")); 
	pstmt.setInt(1, tour_board_no);
	rs = pstmt.executeQuery();
	while(rs.next()){
		%>
		<h2>Edit_tour_add입니다.</h2>
	    <form action="EditTour_boardCtrl" method="post">
	     <table>
	     	<tr>
	            <th>게시판번호</th>
	            <td><input type="text" name="tour_board_num" id="tour_board_num" value="<%=rs.getString("tour_board_num") %>" style="display:none;" required><%=rs.getString("tour_board_num") %></td>
	        </tr>
	        <tr>
	            <th>투어PID번호</th>
	            <td><input type="text" name="tour_board_pidno" id="tour_board_pidno" value="<%=rs.getString("tour_board_pidno") %>" style="display:none;" required><%=rs.getString("tour_board_pidno") %></td>
	        </tr>
	        <tr>
	            <th>제목</th>
	            <td><input type="text" name="tour_board_tit" id="tour_board_tit" 
	            value="<%=rs.getString("tour_board_tit") %>" required></td>
	        </tr>
	        <tr>
	            <th>내용</th>
	            <td><textarea name="tour_board_detail" id="tour_board_detail" cols="30" rows="10"><%=rs.getString("tour_board_detail") %></textarea></td>
	        </tr>
	        <tr>
	            <th>작성자</th>
	            <td><input type="text" name="tour_board_writer" id="tour_board_writer" value="<%=rs.getString("tour_board_writer") %>" style="display:none;" required><%=rs.getString("tour_board_writer") %></td>
	        </tr>
	        <tr>
	            <th>작성일</th>
				<td><input type="text" name="tour_board_cdate" id="tour_board_cdate" value="<%=rs.getString("tour_board_cdate") %>" style="display:none;" required><%=rs.getString("tour_board_cdate") %></td>
	        </tr>
	        <tr>
	        <tr>
	            <th>이미지경로1</th>
	            <td><input type="text" name="tour_board_img1" id="tour_board_img1"
	            value="<%=rs.getString("tour_board_img1") %>"></td>
	        </tr>
	        <tr>
	            <th>이미지경로2</th>
	            <td><input type="text" name="tour_board_img2" id="tour_board_img2"
	            value="<%=rs.getString("tour_board_img2") %>"></td>
	        </tr>
	        <tr>
	            <th>이미지경로3</th>
	            <td><input type="text" name="tour_board_img3" id="tour_board_img3"
	            value="<%=rs.getString("tour_board_img3") %>"></td>
	        </tr>
	        <tr>
	            <th>이미지경로4</th>
	            <td><input type="text" name="tour_board_img4" id="tour_board_img4"
	            value="<%=rs.getString("tour_board_img4") %>"></td>
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