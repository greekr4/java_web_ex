<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shop.model.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품추가</title>
<!--  -->
<script src="../js/jquery-latest.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/ft.css">
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
    <div class="AddGoodsForm">
  <div class="form">
    <form class="AddGoodsForm" id="AddGoodsForm" action="../AddGoodsCtrl" method="post" enctype="multipart/form-data">
       <select name="sel1" id="sel1" onchange="selfn()">
		            <option value="A">루어·미끼</option>
		            <option value="B">바늘·훅</option>
		            <option value="C">루어낚시대</option>
		            <option value="D">릴</option>
		            <option value="E">기타</option>
            </select>

       		 <select name="sel2" id="sel2">
	            <option value="11">웜</option>
	            <option value="12">하드베이트</option>
	            <option value="13">프로그</option>
	            <option value="14">스피너베이트</option>
            </select>      
      <input type="text" placeholder="상품이름" name="g_name" id="g_name" required/>
      <input type="text" placeholder="상품설명" name="g_detail" id="g_detail" required/>
<!--       <input type="text" placeholder="이미지경로" name="g_image" id="g_image" required/> -->
      <input type="file" placeholder="" name="g_upload" id="g_upload" required/>
      <input type="text" placeholder="가격" name="g_price" id="g_price" required/>
      <input type="text" placeholder="수랑" name="g_amount" id="g_amount" required/>
      <input type="text" placeholder="옵션1" name="g_option" id="g_option" required/>   
      <input type="text" placeholder="옵션2" name="g_option2" id="g_option2" required/>   
      <input type="text" placeholder="사이즈" name="g_size" id="g_size" required/>   
      <button type="submit">Add</button>
    </form>
    <script type="text/javascript">
	var sel1 = document.getElementById("sel1");
	var sel2 = document.getElementById("sel2");
    var listA = ["웜","하드베이트","프로그","스피너베이트"];
    var listB = ["지그헤드","와이드갭","언더헤드"];
    var listC = ["배스로드","계류로드","가물치로드"];
    var listD = ["스피닝릴","베이트릴"];
    var listE = ["카본 루어라인","모노 루어라인","하이브리드 라인"];


	function selfn(){
        var num = 11;
        sel2.innerHTML = ""
		if (sel1.value == "A"){
            for(var i=0;i<listA.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listA[i]+"</option>";
            }
		}else if (sel1.value == "B"){
            for(var i=0;i<listB.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listB[i]+"</option>";
            }
		}else if (sel1.value == "C"){
            for(var i=0;i<listC.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listC[i]+"</option>";
            }
		}else if (sel1.value == "D"){
            for(var i=0;i<listD.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listD[i]+"</option>";
            }
		}else if (sel1.value == "E"){
            for(var i=0;i<listE.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listE[i]+"</option>";
            }
		}else if (sel1.value == "F"){
            for(var i=0;i<listF.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listF[i]+"</option>";
            }
		}else if (sel1.value == "G"){
            for(var i=0;i<listG.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listG[i]+"</option>";
            }
		}else if (sel1.value == "H"){
            for(var i=0;i<listH.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listH[i]+"</option>";
            }
		}else if (sel1.value == "I"){
            for(var i=0;i<listI.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listI[i]+"</option>";
            }
		}else if (sel1.value == "J"){
            for(var i=0;i<listJ.length;i++){
            sel2.innerHTML += "<option value='"+ (num+i) +"'>"+ listJ[i]+"</option>";
            }
		}
		
	}
	
		
		
		
/* 	--A	루어/미끼
	--B	바늘/훅
	--C	루어낚시대
	--D	릴
	--E	기타


	--A -------- 	11 : 웜
	--				12 : 하드베이트
	--				13 : 프로그
	--				14 : 스피너베이트
				
	--B -------- 	11 : 지그헤드
	--				12 : 와이드갭
	--				13 : 언더헤드
				
	--C --------	11 : 배스로드
	--				12 : 계류로드
	--				13 : 가물치로드
				
	--D --------	11 : 스피닝릴
	--				12 : 베이트릴

	--E --------	11 : 카본 루어라인
	--				12 : 모노 루어라인
	--				13 : 하이브리드 라인 */

    
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