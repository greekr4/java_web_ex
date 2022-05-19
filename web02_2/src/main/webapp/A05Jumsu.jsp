<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=utf-8");
String name = request.getParameter("name");
int kor = Integer.parseInt(request.getParameter("kor"));
int eng = Integer.parseInt(request.getParameter("kor"));
int tot = kor+eng;
application.setAttribute("tot", tot);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>점수</h2>
<p>name : <%=name %></p>
<p>kor : <%=kor %></p>
<p>eng : <%=eng %></p>
<a href="A06tot.jsp?tot=<%=tot %>">총점 구하러가기</a><br>
<a href="A06hak.jsp">학점 구하러가기</a><br>
<a href="A06pass.jsp">합격/불합격 구하러가기</a>

</body>
</html>