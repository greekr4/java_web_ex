<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>tour_view_add입니다.</h2>
    <form action="/web02/AddTour_viewCtrl" method="post">
     <table>
        <tr>
            <th>투어ID</th>
            <td><input type="text" name="tour_add_id" id="tour_add_id" required></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><input type="text" name="tour_add_name" id="tour_add_name" required></td>
        </tr>
        <tr>
            <th>주소</th>
            <td><input type="text" name="tour_add_address" id="tour_add_address" required></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><input type="text" name="tour_add_tel" id="tour_add_tel" required></td>
        </tr>
        <tr>
            <th>이미지경로1</th>
            <td><input type="text" name="tour_add_img1" id="tour_add_img1"></td>
        </tr>
        <tr>
            <th>이미지경로2</th>
            <td><input type="text" name="tour_add_img2" id="tour_add_img2"></td>
        </tr>
        <tr>
            <th>이미지경로3</th>
            <td><input type="text" name="tour_add_img3" id="tour_add_img3"></td>
        </tr>
        <tr>
            <th>이미지경로4</th>
            <td><input type="text" name="tour_add_img4" id="tour_add_img4"></td>
        </tr>

     </table>
            <input type="submit" value="전송">

    </form>
</body>
</html>