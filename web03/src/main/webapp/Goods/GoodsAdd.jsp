<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shop.model.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>μν μΆκ°</title>
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
html {overflow:hidden;} 
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
		            <option value="A">λ£¨μ΄Β·λ―ΈλΌ</option>
		            <option value="B">λ°λΒ·ν</option>
		            <option value="C">λ£¨μ΄λμλ</option>
		            <option value="D">λ¦΄</option>
		            <option value="E">κΈ°ν</option>
            </select>

       		 <select name="sel2" id="sel2">
	            <option value="11">μ</option>
	            <option value="12">νλλ² μ΄νΈ</option>
	            <option value="13">νλ‘κ·Έ</option>
	            <option value="14">μ€νΌλλ² μ΄νΈ</option>
            </select>      
      <input type="text" placeholder="μνμ΄λ¦" name="g_name" id="g_name" required/>
      <input type="text" placeholder="μνμ€λͺ" name="g_detail" id="g_detail" required/>
<!--       <input type="text" placeholder="μ΄λ―Έμ§κ²½λ‘" name="g_image" id="g_image" required/> -->
      <input type="file" placeholder="" name="g_upload" id="g_upload" required/>
      <input type="text" placeholder="κ°κ²©" name="g_price" id="g_price" required/>
      <input type="text" placeholder="μλ" name="g_amount" id="g_amount" required/>
      <input type="text" placeholder="μ΅μ1" name="g_option" id="g_option" required/>   
      <input type="text" placeholder="μ΅μ2" name="g_option2" id="g_option2" required/>   
      <input type="text" placeholder="μ¬μ΄μ¦" name="g_size" id="g_size" required/>   
      <button type="submit">Add</button>
    </form>
    <script type="text/javascript">
	var sel1 = document.getElementById("sel1");
	var sel2 = document.getElementById("sel2");
    var listA = ["μ","νλλ² μ΄νΈ","νλ‘κ·Έ","μ€νΌλλ² μ΄νΈ"];
    var listB = ["μ§κ·Έν€λ","μμ΄λκ°­","μΈλν€λ"];
    var listC = ["λ°°μ€λ‘λ","κ³λ₯λ‘λ","κ°λ¬ΌμΉλ‘λ"];
    var listD = ["μ€νΌλλ¦΄","λ² μ΄νΈλ¦΄"];
    var listE = ["μΉ΄λ³Έ λ£¨μ΄λΌμΈ","λͺ¨λΈ λ£¨μ΄λΌμΈ","νμ΄λΈλ¦¬λ λΌμΈ"];


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
	
		
		
		
/* 	--A	λ£¨μ΄/λ―ΈλΌ
	--B	λ°λ/ν
	--C	λ£¨μ΄λμλ
	--D	λ¦΄
	--E	κΈ°ν


	--A -------- 	11 : μ
	--				12 : νλλ² μ΄νΈ
	--				13 : νλ‘κ·Έ
	--				14 : μ€νΌλλ² μ΄νΈ
				
	--B -------- 	11 : μ§κ·Έν€λ
	--				12 : μμ΄λκ°­
	--				13 : μΈλν€λ
				
	--C --------	11 : λ°°μ€λ‘λ
	--				12 : κ³λ₯λ‘λ
	--				13 : κ°λ¬ΌμΉλ‘λ
				
	--D --------	11 : μ€νΌλλ¦΄
	--				12 : λ² μ΄νΈλ¦΄

	--E --------	11 : μΉ΄λ³Έ λ£¨μ΄λΌμΈ
	--				12 : λͺ¨λΈ λ£¨μ΄λΌμΈ
	--				13 : νμ΄λΈλ¦¬λ λΌμΈ */

    
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