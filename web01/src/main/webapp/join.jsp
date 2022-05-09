<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<link rel="stylesheet href="reset.css">
<link rel="stylesheet" href="test.css">
<!-- 웹 아이콘 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style>
a { text-decoration: none; color: #333;}

</style>
</head>
<body>
	<div class="wrap">
		<header id="hd" class="panel-heading">
			<div class="hd_wrap">
				<%@ include file="menu.jsp" %>
			</div>
		</header>
		<div class="content" class="panel-body">
			<h2>회원가입</h2>
			<form id="frm2" name="join" action="joinPro.jsp" method="post">
				<ul>
					<li><input type="text" class="indata" id="id" name="id" placeholder="아이디입력"  value="" required></li>
					<li><button type="button" onclick="chackId()" class="checkId" id="checkId" name="checkId">아이디중복확인</button>
						<button type="button" onclick="chackId2()" class="chackId_reset" id="chackId_reset" name="chackId_reset">아이디 다시 입력</button>
					</li>
					<input type="hidden" name="hidden" values="idUncheck">
					<li><input type="password" class="indata" id="pw" name="pw" placeholder="비밀번호입력" required></li>
					<li><input type="password" class="indata" id="pw_c" name="pw_c" placeholder="비밀번호확인" required></li>
					<li><input type="text" class="indata" id="name2" name="name2" placeholder="이름입력" required></li>
					<li><input type="tel" class="indata" id="phone" name="phone" placeholder="전화번호입력"></li>
					<li><input type="text" class="indata" id="address" name="address" placeholder="주소입력"></li>
					<li class="btn_frame">
						<button type="button" onclick="join_btn()" class="submit_btn" id="submit_btn" name="submit_btn">회원가입</button> &nbsp; &nbsp; &nbsp; &nbsp;
						<input type="reset" value="취소" id="reset" class="btn">
					</li>
				</ul>
			</form>
			<script>
			
			function chackId2(){
 			document.join.id.value = "";
			document.join.id.readOnly = false; 
			}
			
			function chackId() {
				//var id = document.getElementById("id");
				if (id.value == "")
				{
				alert("아이디를 입력해주세요");
				}else{
				window.open("id_ck.jsp?cid="+id.value,"","width=500,height=300,top=300,left=100");
				}

			}
			
			function join_btn(){
				
				if(id.value == ""){
				alert("아이디를 입력해주세요");
				return;
				}
				if(pw.value == ""){
				alert("비밀번호를 입력해주세요");
				return;
				}
				if(pw_c.value == ""){
				alert("비밀번호확인을 입력해주세요");
				return;
				}
				if(name2.value == ""){
				alert("이름을 입력해주세요");
				return;
				}	
				if(phone.value == ""){
				alert("전화번호를 입력해주세요");
				return;
				}	
				if(address.value == ""){
				alert("주소를 입력해주세요");
				return;
				}					
				if(pw.value != pw_c.value)
				{
				alert("비밀번호를 다시 확인해주세요");
				return;
				}
				if(id.readOnly == false)
				{
				alert("아이디 중복확인을 해주세요.")
				return;
				}
				alert("회원가입을 진행하겠습니다.");
				
				document.join.submit();
				
				
				//window.open("id_ck.jsp?cid="+id.value,"","width=500,height=300,top=300,left=100");
			}
			</script>
		</div>
			<footer id="ft" class="panel-footer">
				<%@ include file="ft.jsp" %>
			</footer>
		</div>
	</body>
</html>