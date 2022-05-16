<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.memberVO"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<memberVO> mypage = (ArrayList<memberVO>) request.getAttribute("MemberPage");
memberVO VO = new memberVO();
VO = mypage.get(0);
%>   
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>

    </style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">
<h2>마이페이지 입니다</h2>

    <form action="EditMypage" method="post">
        <table>
            <tbody>
                <tr>
                    <th>아이디</th><th><input type="text" name="myid" id="myid" value="<%=VO.getMember_id() %>" style="display:none;"><label><%=VO.getMember_id() %></label></th>
                </tr>
                <tr>
                    <th>비밀번호</th><th><input type="password" name="mypw" id="mypw" value="<%=VO.getMember_pw() %>"></th>
                </tr>
                <tr>
                    <th>이름</th><th><input type="text" name="myname" id="myname" value="<%=VO.getMember_name() %>" style="display:none;"><label><%=VO.getMember_name() %></label></th>
                </tr>
                <tr>
                    <th>핸드폰번호</th><th><input type="tel" name="mytel" id="mytel" value="<%=VO.getMember_pnum() %>"></th>
                </tr>
                <tr>
                    <th>주소</th><th><input type="text" name="myaddress" id="myaddress" value="<%=VO.getMember_address() %>"></th>
                </tr>
                <tr>
                    <th></th><th><input type="submit" value="전송"></th>
                </tr>
            </tbody>
        </table>


    </form>
	
	
	
	
	
	
	

</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>