<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->

<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="datatables.min.css">
<link rel="stylesheet" href="test.css">
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
});
</script>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="menu.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2>글 상세보기</h2>
		<table class="table" id="myTable">
			<tbody>	
<!-- DB 연결문 -->
<%@ include file="connectPool.conf" %>
<!-- 반복 실행 구간 시작 -->
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	sql = "select * from board where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	rs = pstmt.executeQuery();
	while(rs.next()){
%>
			<tr><th>글번호</th><td><%=rs.getInt("bno") %></td></tr>
			<tr><th>제목</th><td><%=rs.getString("btitle") %></td></tr>
			<tr><th>포스트</th><td><%=rs.getString("post") %></td></tr>
			<tr><th>등록일</th><td><%=rs.getString("regdate") %></td></tr>
			<tr><th>작성자</th><td><%=rs.getString("author") %></td></tr>
			<tr>
				<td colspan="2">
				<%if (sid.equals("admin")){ %>
					<a href="boardUpdate.jsp?bno=<%=bno %>" class="btn btn-primary">수정</a>
					<a href="boardDeletePro.jsp?bno=<%=bno %>" class="btn btn-primary">삭제</a>
				<%} %>
				<a href="board1.jsp" class="btn btn-primary">목록</a>
				</td>
			</tr>
 <!-- 반복 실행 구간 종료-->
 <%
	}
 %>
 <%@ include file="connectClose.conf" %>
 <!-- DB 닫기문 -->
 			</tbody>
		</table>
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>