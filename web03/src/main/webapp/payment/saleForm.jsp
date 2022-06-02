<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/ft.css">
<link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
<!--  -->






<style>
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
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
<div class="loginbox">
    <div class="join-page">
  <div class="form">
  	<h2>구매 하기</h2>
    <form class="join" id="join" action="EditMemberCtrl" method="post">
      <input type="text" name="gno" id="gno" value="${BasketVo.gno }">
      <input type="text" placeholder="상품명" name="my_id" id="my_id" value="${BasketVo.gname }" required readonly/>
      <img style="display: block; width: 100%;" alt="img" src="./img/${BasketVo.gimage }">
      <input type="text" placeholder="수량" name="amount" id="amount" value="${BasketVo.bamount }개"required readonly/>
      <input type="text" placeholder="가격" name="gprice" id="gprice"value="<fmt:formatNumber value='${BasketVo.gprice}' pattern='#,###'/>원" required readonly/>
      <input type="text" placeholder="수신자 명" name="rname" id="rname" value="" required/>
      <input type="text" placeholder="수신자 연락처" name="my_address" id="my_address" value="" required/>
      <input type="text" placeholder="수신자 주소" name="addr1" id="addr1"  onclick="findAddr();" readonly required/>
      <input type="text" placeholder="우편번호" name="postcode" id="postcode" value="" required/>
      <input type="text" placeholder="상세주소" name="addr2" id="addr2" value="" required/>
      
      <input type="text" name="memo" id="memo" placeholder="요청 사항" value="">
      <select name="paytype" id="paytype">
      <option>계좌 이체</option>
      <option>신용카드 결제</option>
      <option>무통장 입금</option>
      </select>
      <input type="text" name="payplace" id="payplace" placeholder="카드사/은행명" value="">
      <input type="text" name="payno" id="payno" placeholder="카드번호/계좌번호" value=""> 
      <button type="button" onclick="Edit();">Purchase</button>
      <button type="button" onclick="Del();" style="margin-top:5px;">Cancel</button>
    </form>
    <script type="text/javascript">
    function findAddr() {
			  new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수

		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                   
		                
		                } else {
		                   
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById("postcode").value = data.zonecode;	//우편번호
		                document.getElementById("addr1").value = addr;				//주소1
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("addr2").focus();					//주소2(상세주소)
		            }
		        }).open();
    }
    
    toastr.options.preventDuplicates = true;
    toastr.options.positionClass = "toast-top-full-width";
 
    
    
    function Edit(){
    var ck1 = document.getElementById("my_id").readOnly;
    var ck2 = document.getElementById("my_pw").value;
    var ck4 = document.getElementById("my_name").value;
    var ck5 = document.getElementById("my_nick").value;
    var ck6 = document.getElementById("my_tel").value;
    var ck7 = document.getElementById("my_address").value;
    var ck8 = document.getElementById("my_email").value;
    var ck9 = document.getElementById("my_cash").value;
    var ck10 = document.getElementById("my_point").value;
    var ck11 = document.getElementById("my_grade").value;
    if(ck1 == false){
    	alert('아이디 중복검사를 해주세요');
    	return;
    }if(ck2 == ""){
    	alert('비밀번호를 입력해주세요');
    	return;
    }if(ck4 == ""){
    	alert('이름을 입력해주세요');
    	return;
    }if(ck5 == ""){
    	alert('닉네임을 입력해주세요');
    	return;
    }if(ck6 == ""){
    	alert('연락처를 입력해주세요');
    	return;
    }if(ck7 == ""){
    	alert('주소를 입력해주세요');
    	return;
    }if(ck8 == ""){
    	alert('이메일을 입력해주세요');
    	return;
    }if(ck9 == ""){
    	alert('운영자님 빈칸이 있어요');
    	return;
    }if(ck10 == ""){
    	alert('운영자님 빈칸이 있어요');
    	return;
    }if(ck11 == ""){
    	alert('운영자님 빈칸이 있어요');
    	return;
    }
    
    
    	document.getElementById("join").submit();
    }
    
    function Del() {
    	   var retVal = confirm("정말 삭제하실껀가요?");
    	   if( retVal == true ){
    		  var uid = document.getElementById("my_id").value;
    	      location.href="DelMemberCtrl?uid="+uid;
    	   }
		
	}
    
    
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