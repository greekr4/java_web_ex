<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>tour_board_add입니다.</h2>
    <form action="/web02/AddTour_boardCtrl" method="post">
     <table>
        <tr>
            <th>pid넘버</th>
            <td><input type="text" name="tour_board_pidno" id="tour_board_pidno" required></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="tour_board_tit" id="tour_board_tit" required></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea name="tour_board_detail" id="tour_board_detail" cols="30" rows="10"></textarea></td>
        </tr>
        <tr>
            <th>작성자</th>
            <td><input type="text" name="tour_board_writer" id="tour_add_tel" required value="관리자"></td>
        </tr>
        <tr>
            <th>이미지경로1</th>
            <td><input type="text" name="tour_board_img1" id="tour_board_img1"></td>
        </tr>
        <tr>
            <th>이미지경로2</th>
            <td><input type="text" name="tour_board_img2" id="tour_add_img2"></td>
        </tr>
        <tr>
            <th>이미지경로3</th>
            <td><input type="text" name="tour_board_img3" id="tour_add_img3"></td>
        </tr>
        <tr>
            <th>이미지경로4</th>
            <td><input type="text" name="tour_board_img4" id="tour_add_img4"></td>
        </tr>

     </table>
            <input type="submit" value="전송">

    </form>
</body>
</html>