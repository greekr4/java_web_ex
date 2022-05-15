<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String cbno = request.getParameter("cbno"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>tour_comment add입니다.</h2>
    <form action="/web02/AddTour_commentCtrl" method="post">
     <table>
        <tr>
            <th>게시판번호</th>
            <td><input type="text" name="tour_comment_bno" id="tour_comment_bno" value="<%=cbno %>" required></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><input type="text" name="tour_comment_detail" id="tour_comment_detail" required></td>
        </tr>
        <tr>
            <th>작성자</th>
            <td><input type="text" name="tour_comment_name" id="tour_comment_name" required></td>
        </tr>


     </table>
            <input type="submit" value="전송">

    </form>
</body>
</html>