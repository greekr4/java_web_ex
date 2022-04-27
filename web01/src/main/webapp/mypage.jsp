<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 보기 및 수정</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "select * from member where id=?";
		String id = (String) session.getAttribute("uid");
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()){
			
			%>
			<form action="memEdit.jsp" method="post">
				<table>
					<tbody>
						<tr>
							<td>아이디 : </td>
							<td><input type="text" name="uid" value='<%=rs.getString("id") %>'readonly></td>
						</tr>
						
						
						<tr>
							<td>비밀번호 : </td>
							<td><input type="text" name="upw" value='<%=rs.getString("pw") %>'></td>
						</tr>
						
						<tr>
							<td>이름 : </td>
							<td><input type="text" name="name" value='<%=rs.getString("name") %>'readonly></td>
						</tr>	
						
						<tr>
							<td>연락처 : </td>
							<td><input type="text" name="phone" value='<%=rs.getString("phone") %>'></td>
						</tr>				
						<tr>
							<td>주소 : </td>
							<td><input type="text" name="address" value='<%=rs.getString("address") %>'></td>
						</tr>											
						 <tr>
						 	<td colspan="2">
						 		<input type="submit" value="정보변경"/> &nbsp; &nbsp; &nbsp;&nbsp;
						 		<input type="reset" value="취소"/>
						 	</td>
						 </tr>
										
					</tbody>
				</table>
			</form>
			<%
			
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally {
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