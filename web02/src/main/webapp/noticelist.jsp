<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.noticeVO"%>
<%@ page import="java.util.ArrayList"%>

    
<%
ArrayList<noticeVO> Volist = (ArrayList<noticeVO>) request.getAttribute("noticeList");
%>   

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
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
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>



<h2>여기는 공지사항관리 입니다.</h2>


<table id="tb">
	<button onclick="window.open('Send_Addnotice','추가','width=430,height=500,location=no,status=no,scrollbars=yes');">추가</button>
	<tr><th>고유번호</th><th>상태</th><th>작성자</th><th>제목</th><th>내용</th><th>공지시작일</th><th>공지끝</th><th>작성일</th><th>수정일</th><th>삭제일</th><th>조회수</th><th>버튼</th></tr>


<%for(int i=0;i<Volist.size();i++)
	{
	noticeVO Vo = new noticeVO();
	Vo = Volist.get(i);
	%>
	<tr>
	<th><%=Vo.getNOTICE_UNINO() %></th>
	<th><%=Vo.getNOTICE_STATE() %></th>
	<th><%=Vo.getNOTICE_WRITER() %></th>
	<th><%=Vo.getNOTICE_TIT() %></th>
	<th><%=Vo.getNOTICE_DETAIL() %></th>
	<th><%=Vo.getNOTICE_FROM_DATE() %></th>
	<th><%=Vo.getNOTICE_TO_DATE() %></th>
	<th><%=Vo.getNOTICE_REG_DATE() %></th>
	<th><%=Vo.getNOTICE_UPDATE_DATE() %></th>
	<th><%=Vo.getNOTICE_DEL_DATE() %></th>
	<th><%=Vo.getNOTICE_VIEW() %></th>
	<th>
		<button onclick="window.open('Send_EditNotice?notice_edit_no=<%=Vo.getNOTICE_UNINO() %>','수정','width=430,height=500,location=no,status=no,scrollbars=yes');">수정</button>
		<button onclick="window.open('Del_Notice?notice_edit_no=<%=Vo.getNOTICE_UNINO() %>','삭제','width=430,height=500,location=no,status=no,scrollbars=yes');">삭제</button>
	</th>
	</tr>
	<%} %>
</table>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>