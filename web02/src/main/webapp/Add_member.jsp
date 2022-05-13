<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>add_member 입니다.</h2>
    <form action="/web02/AddMemberCtrl" method="post">
     <table>
        <tr>
            <th>아이디</th>
            <td><input type="text" name="member_id" id="member_id" required></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="text" name="member_pw" id="member_pw" required></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><input type="text" name="member_name" id="member_name" required></td>
        </tr>
        <tr>
            <th>핸드폰번호</th>
            <td><input type="text" name="member_pnum" id="member_pnum" required></td>
        </tr>
        <tr>
            <th>주소</th>
            <td><input type="text" name="member_address" id="member_address" required></td>
        </tr>
        <tr>
            <th>초기설정캐쉬</th>
            <td><input type="text" name="member_cash" id="member_cash" value="0"></td>
        </tr>
        <tr>
            <th>초기설정포인트</th>
			<td><input type="text" name="member_point" id="member_point" value="0"></td>
        </tr>
        <tr>
            <th>등급</th>
            <td>
			      <select name="member_grade">
			        <option value="1" >1 일반</option>
			        <option value="2" >2 우수</option>
			        <option value="3" >3 VIP</option>
			        <option value="4" >4 VVIP</option>
			        <option value="5" >5 관리자</option>
			    </select>
			</td>
            
        </tr>

     </table>
            <input type="submit" value="전송">

    </form>
</body>
</html>