<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<% 
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String address = request.getParameter("address");
String qty = request.getParameter("qty");
int qty2 = Integer.parseInt(qty);
String email = request.getParameter("email");
String url = request.getParameter("url");
String date = request.getParameter("date");
String comment = request.getParameter("comment");
String baseball = request.getParameter("baseball");
String favorite[] = request.getParameterValues("favorite");
String victory = request.getParameter("victory");
String playoff[] = request.getParameterValues("playoff");
String file = request.getParameter("file");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>받는 곳</title>

<style>
td{
    display: block;
    margin-left: 30px;
    text-align: center;
}

</style>
</head>
<body>
<h1>받는 곳</h1>
<fieldset style="width: 300px">
<table>
<tbody>
	<tr>
		<th><label>이름</label></th>
		<td><label><%=name %></label></td>
	</tr>
	
	<tr>
		<th><label>아이디</label></th>
		<td><label><%=id %></label></td>
	</tr>
	
	<tr>
		<th><label>패스워드</label></th>
		<td><label><%=pw %></label></td>
	</tr>
	
	<tr>
		<th><label>주소</label></th>
		<td><label><%=address %></label></td>
	</tr>
	
	<tr>
		<th><label>주문수량</label></th>
		<td><label><%=qty2 %></label></td>
	</tr>
	<tr>
		<th><label>이메일</label></th>
		<td><label><%=email %></label></td>
	</tr>
	<tr>
		<th><label>URL</label></th>
		<td><label><%=url %></label></td>
	</tr>
	<tr>
		<th><label>날짜</label></th>
		<td><label><%=date %></label></td>
	</tr>
	
	<tr>
		<th><label>커맨트</label></th>
		<td><label><%=comment %></label></td>
	</tr>

	<tr>
		<th><label>야구팀</label></th>
		<td><label><%=baseball %></label></td>
	</tr>

	<tr>
		<th><label>4강팀</label></th>
		<td>
		<%for(String Favoriteteam : favorite){
			%><label><%=Favoriteteam %> </label><% 
		}
		%>
		</td>
	</tr>
	
	<tr>
		<th><label>우승 예상팀</label></th>
		<td><label><%=victory %></label></td>
	</tr>
	
	<tr>
		<th><label>진출 예상팀</label></th>
				<td>
		<%for(String playoffteam : playoff){
			%><label><%=playoffteam %> </label><% 
		}
		%>
		</td>
	</tr>
	
	<tr>
		<th><label>파일</label></th>
		<td><label><%=file %></label></td>
	</tr>
</tbody>
</table>
</fieldset>
</body>
</html>