<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_viewVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_viewVO> mem = (ArrayList<tour_viewVO>) request.getAttribute("tour_viewList");
%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#tb{
border-collapse: collapse;
width:1800px;
margin: 0 auto;
display: table;
line-height: 35px;

}
#tb td{
width : 200px;
border-bottom: 1px solid #000;
}
#tb th{
border-bottom: 1px solid #000;
border-top: 1px solid #000;
}

</style>
</head>
<body>
<h2>여기는 tour_viewList.jsp입니다.</h2>


<table id="tb">
	<tr><th>투어코드</th><th>투어번호</th><th>투어이름</th><th>투어내용</th><th>투어주소</th><th>투어연락처</th><th>이미지경로1</th><th>이미지경로2</th><th>이미지경로3</th><th>이미지경로4</th></tr>


<%for(int i=0;i<mem.size();i++)
	{
	tour_viewVO mem2 = new tour_viewVO();
	mem2 = mem.get(i);
	%>
	<tr><td><%=mem2.getTour_id() %></td><td><%=mem2.getTour_num() %></td><td><%=mem2.getTour_name() %></td><td><%=mem2.getTour_detail() %></td><td><%=mem2.getTour_address() %></td><td><%=mem2.getTour_tel() %></td><td><%=mem2.getTour_img1() %></td><td><%=mem2.getTour_img2() %></td><td><%=mem2.getTour_img3() %></td><td><%=mem2.getTour_img4() %></td></tr>

	<%} %>
</table>
</body>
</html>