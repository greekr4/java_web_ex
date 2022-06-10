<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
<!--  -->
<script src="../js/jquery-latest.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/common.css">
<!--  -->





<style>
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 500px;
  margin: 0 auto 100px;
  margin-top:100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}


.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #343a40;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}

.form button:hover,.form button:active,.form button:focus {
  background: #444a50;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}

.form .message a {
  color: #343a40;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
<input type="button" id="b" value="회원정보보기">	
<div id="con"></div>
<div class="loginbox">
    <div class="login-page">
  <div class="form">
    <form class="login-form" action="SendChatCtrl" method="post">
      <table style="width: 100%; margin: 0 auto;">
      <thead>
      <tr style="border-bottom: 1px solid #000;">
      <th>발신자</th>
<!--       <th>수신자</th> -->
      <th>내용</th>
      <th>시간</th>
      </tr>
      </thead>
      <tbody>
      		  <c:forEach items="${sendedlist }" var="Vo" varStatus="status" begin="0" end="9" >
		      <c:set var="min" value="${status.index }"/>
		      </c:forEach>
      
      
      		  <c:if test="${min < 9 }">
		      	<c:forEach begin="1" end="${9 - min }">
		     	<tr>
		      		<td>-</td>
<!-- 		      		<td>-</td> -->
		      		<td>-</td>
		      		<td>-</td>
		      </tr>
		      	</c:forEach>

		      </c:if>
      
		      <c:forEach items="${sendedlist }" var="Vo" varStatus="status" begin="0" end="9" >
		      <tr>
		      	<td>${Vo.sendid }</td>
<%-- 		      	<td>${Vo.reqid }</td> --%>
		      	<td>${Vo.cdetail }</td>
		      	<td>${Vo.cdate }</td>
		      </tr>
		      </c:forEach>
      </tbody>
      </table>
      <input type="hidden" value="admin" name = "reqid">
      <input type="text" placeholder="내용" name="cdetail" id="cdetail" />
      <button type="submit">전송</button>
    </form>
    <script type="text/javascript">
	$(document).ready(function() {		
		$("#con").hide();		
		$("#b").click(function() {						
			$.ajax({				
				url : "../GetChatListCtrl_aljax", // MemberJSONCtrl의 JSONObject 값을 가져옴
				dataType : "json", // 데이터 타입을 json
				contentType: 'application/x-www-form-urlencoded; charset=euc-kr', // UTF-8처리
				cache : false, // true : 새로 고침 동작을 하지 않고, 저장된 캐시에서 불러오게됨, false:새로 불러옴 
				success : function(data) {
					alert('d');
					$("#con").empty(); //id가 con을 초기화					
					$("<table>").css({						
						backgroundColor : "#ececec",						
						border : "solid 3px gold",
						margin : "20px auto",
						}).appendTo("#con"); // 테이블을 생성하고 그 테이블을 div에 추가함					
						var key = Object.keys(data["Chatlist"][0]); // 키값(항목명)을 가져옴					
						$("<tr>" , {												
							html : "<th>"+key[0]+"</th>"+  // 컬럼명들								
							"<th>" + key[1] + "</th>"+								
							"<th>" + key[2] + "</th>"+								
							"<th>" + key[3] + "</th>"+
							"<th>" + key[4] + "</th>"
		
							}).appendTo("table") // 이것을 테이블에붙임					
							$.each(data.Memberlist, function(index, Memberlist) { // 이치를 써서 모든 데이터들을 배열에 넣음												
								var items = [];						
								items.push("<td>" + Chatlist.cno + "</td>"); // 여기에 id pw addr tel의 값을 배열에 넣은뒤								
								$("<tr/>", {							
									html : items // 티알에 붙임,						
								}).appendTo("table"); // 그리고 그 tr을 테이블에 붙임					
							});//each끝				
						}			
				});
				$("#con").fadeToggle("slow")											
			});	
		});
    </script>
  </div>
</div>
</div>
</div>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>