<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_viewVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<tour_viewVO> Volist = (ArrayList<tour_viewVO>) request.getAttribute("tour_viewList");
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
padding-left:1.2em;
padding-right:1.2em;
}
#tb th{
border-bottom: 1px solid #000;
border-top: 1px solid #000;
}
img{
display:block;
width:300px;
}

</style>
</head>
<body>
<h2>여기는 tour_viewList.jsp입니다.</h2>
<button onclick="window.open('Add_tour_view.jsp','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가(jsp)</button>
<button onclick="window.open('Send_AddTour_view','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가2(서블릿)</button>
<table id="tb">
	<tr>
		<th>고유번호</th>
		<th>투어ID</th>		
		<th>대분류</th>
		<th>소분류</th>
		<th>이름</th>
		<th>주소</th>
		<th>연락처</th>
		<th>썸네일</th>
		<th>썸네일경로</th>
		<th>버튼</th>
	</tr>


<%for(int i=0;i<Volist.size();i++)
	{
	//tour_viewVO mem2 = new tour_viewVO();
	tour_viewVO Vo = Volist.get(i);
	%>
	<tr>
		<th><%=Vo.getTour_num() %></th>
		<th><%=Vo.getTour_id() %></th>		
		<th><%=Vo.getCcode_res() %></th>	
		<th><%=Vo.getDcode_res() %></th>	
		<th><a href="/web02/GetboardMoreCtrl?pidno=<%=Vo.getTour_id() %>"><%=Vo.getTour_name() %></a></th>	
		<th><%=Vo.getTour_address() %></th>	
		<th><%=Vo.getTour_tel() %></th>	
		<th><img src="<%=Vo.getTour_img1() %>" alt="<%=Vo.getTour_name() %>"></th>	
		<th><%=Vo.getTour_img1() %></th>
		<th>
		<button onclick="window.open('Send_EditTour_view?tour_edit_no=<%=Vo.getTour_num() %>','수정','width=430,height=500,location=no,status=no,scrollbars=yes');">수정</button>
		<button onclick="window.open('DelTour_viewCtrl?tour_del_no=<%=Vo.getTour_num() %>','삭제','width=430,height=500,location=no,status=no,scrollbars=yes');">삭제</button>
		</th>
	</tr>

	<%} %>
</table>

</body>
</html>