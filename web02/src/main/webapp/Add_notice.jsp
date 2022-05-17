<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Add_notice 입니다.</h2>
    <form action="/web02/AddNoticeCtrl" method="post">
     <table>
        <tr>
            <th>공지상태</th>
            <td>
	            <select name="notice_state" id="notice_state">
		            <option value="1">공지ON</option>
		            <option value="2">공지OFF</option>
	        	</select>
        	</td>
        </tr>
        <tr>
            <th>작성자</th>
            <td><input type="text" name="notice_writer" id="notice_writer" required></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="notice_tit" id="notice_tit" required></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea name="notice_detail" id="notice_detail" cols="30" rows="10" required></textarea></td>
        </tr>
        <tr>
            <th>공지시작일</th>
            <td><input type="date" name="notice_from_date" id="notice_from_date"></td>
        </tr>
        <tr>
            <th>공지끝</th>
            <td><input type="date" name="notice_to_date" id="notice_to_date" value="0"></td>
        </tr>


     </table>
            <input type="submit" value="전송">

    </form>
</body>
</html>