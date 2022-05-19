<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<% 
String uploadpath = "D:\\Taek\\uploadtest";
int maxSize = 1024*1024*100;
DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, "UTF-8", policy);
request.setCharacterEncoding("UTF-8");
System.out.println(multi.getParameter("name"));
String name = multi.getParameter("name");
String password = multi.getParameter("password");
String address = multi.getParameter("address");
int qty = Integer.parseInt(multi.getParameter("qty"));
String email = multi.getParameter("email");
String url = multi.getParameter("url");
String date = multi.getParameter("date");
String comment = multi.getParameter("comment");
String baseball = multi.getParameter("baseball");
String[] four = multi.getParameterValues("four");
String base = multi.getParameter("base");
String[] five = multi.getParameterValues("five");
String upload = multi.getFilesystemName("upload");
String upload2 = multi.getOriginalFileName("upload");
System.out.println(request.getRealPath("upload"));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<p>name : <%=name %></p>
<p>password : <%=password %></p>
<p>address : <%=address %></p>
<p>qty : <%=qty %></p>
<p>email : <%=email %></p>
<p>url : <%=url %></p>
<p>date : <%=date %></p>
<p>comment : <%=comment %></p>
<p>baseball : <%=baseball %></p>
<ul><label>four?</label>
<%for(int i=0;i<four.length;i++){
	%>
	<li><%=four[i] %></li>
	<%
}
%>
</ul>
<br>
<p>base : <%=base %></p>
<ul><label>five?</label>
<%for(int i=0;i<five.length;i++){
	%>
	<li><%=five[i] %></li>
	<%
}
%>
</ul>
<br>

<p>실제 파일 명 : <%=upload2 %></p>
<p>업로드 된 파일 이름 : <%=upload %></p>
<p>업로드 된 경로 : <%=uploadpath %></p>








</body>
</html>