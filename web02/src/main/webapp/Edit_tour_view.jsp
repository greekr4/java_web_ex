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
	sql = "select * from tour_view where TOUR_NUM=?";
	pstmt = conn.prepareStatement(sql);
	int tour_no = Integer.parseInt(request.getParameter("tour_edit_no")); 
	pstmt.setInt(1, tour_no);
	rs = pstmt.executeQuery();
	while(rs.next()){
		%>
		<h2>Edit_tour_add입니다.</h2>
	    <form action="/web02/EditTour_viewCtrl" method="post">
	     <table>
	     	<tr>
	            <th>고유번호</th>
	            <td><input type="text" name="tour_edit_num" id="tour_edit_num" value="<%=rs.getString("tour_num") %>" style="display:none;" required><%=rs.getString("tour_num") %></td>
	        </tr>
	        <tr>
	            <th>투어ID</th>
	            <td><input type="text" name="tour_edit_id" id="tour_edit_id" value="<%=rs.getString("tour_id") %>" required></td>
	        </tr>
	        <tr>
	            <th>이름</th>
	            <td><input type="text" name="tour_edit_name" id="tour_edit_name" 
	            value="<%=rs.getString("tour_name") %>" required></td>
	        </tr>
	        <tr>
	            <th>주소</th>
	            <td><input type="text" name="tour_edit_address" id="tour_edit_address" 
	            value="<%=rs.getString("tour_address") %>" required></td>
	        </tr>
	        <tr>
	            <th>전화번호</th>
	            <td><input type="text" name="tour_edit_tel" id="tour_edit_tel" 
	            value="<%=rs.getString("tour_tel") %>" required></td>
	        </tr>
	        <tr>
	            <th>이미지경로1</th>
	            <td><input type="text" name="tour_edit_img1" id="tour_edit_img1"
	            value="<%=rs.getString("tour_img1") %>" ></td>
	        </tr>
	        <tr>
	            <th>이미지경로2</th>
	            <td><input type="text" name="tour_edit_img2" id="tour_edit_img2"
	            value="<%=rs.getString("tour_img2") %>"></td>
	        </tr>
	        <tr>
	            <th>이미지경로3</th>
	            <td><input type="text" name="tour_edit_img3" id="tour_edit_img3"
	            value="<%=rs.getString("tour_img3") %>"></td>
	        </tr>
	        <tr>
	            <th>이미지경로4</th>
	            <td><input type="text" name="tour_edit_img4" id="tour_edit_img4"
	            value="<%=rs.getString("tour_img4") %>"></td>
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