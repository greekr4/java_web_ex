<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.joinbox{
width:1200px;
margin:0 auto;
}
#jointb
{
margin:0 auto;
}

        form {
            width: 33%;
            margin: 60px auto;
           
            padding: 60px 120px 80px 120px;
            text-align: center;
            /*
            background: #efefef;
            -webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
            box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
            */
        }

        label {
            display: block;
            position: relative;
            margin: 40px 0px;
        }

        .label-txt {
            position: absolute;
            top: -1.6em;
            padding: 10px;
            font-family: sans-serif;
            font-size: .8em;
            letter-spacing: 1px;
            color: rgb(120, 120, 120);
            transition: ease .3s;
        }

        .input {
            width: 80%;
            padding: 10px;
            background: transparent;
            border: none;
            outline: none;
        }

        .line-box {
            position: relative;
            width: 94.5%;
            height: 2px;
            background: #BCBCBC;
        }

        .line {
            position: absolute;
            width: 0%;
            height: 2px;
            top: 0px;
            left: 50%;
            transform: translateX(-50%);
            background: #8BC34A;
            transition: ease .6s;
        }

        .input:focus+.line-box .line {
            width: 100%;
        }

        .label-active {
            top: -3em;
        }

        button {
            display: inline-block;
            padding: 12px 24px;
            background: rgb(220, 220, 220);
            font-weight: bold;
            color: rgb(120, 120, 120);
            border: none;
            outline: none;
            border-radius: 3px;
            cursor: pointer;
            transition: ease .3s;
        }

        button:hover {
            background: #8BC34A;
            color: #ffffff;
        }
        #checkId{
        position: absolute;
    	left: 79%;
    	bottom: 10px;
        }
</style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct">
    <form action="AddMemberCtrl" method="post" name="join">
        <label>
            <p class="label-txt">ENTER YOUR ID</p> <input type="text" class="input" name="member_id" id="member_id"> <button type="button" onclick="idck()" class="checkId" id="checkId" name="checkId">IDcheck</button>
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label> <label>
            <p class="label-txt">ENTER YOUR PW</p> <input type="password" class="input" name="member_pw" id="member_pw">
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label> <label>
            <p class="label-txt">ENTER YOUR NAME</p> <input type="text" class="input" name="member_name" id="member_name">
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label> <label>
	        <p class="label-txt">ENTER YOUR TEL</p> <input type="text" class="input" name="member_pnum" id="member_pnum">
	        <div class="line-box">
	            <div class="line"></div>
        </div>
        </label> <label>
	        <p class="label-txt">ENTER YOUR ADDRESS</p> <input type="text" class="input" name="member_address" id="member_address">
	        <div class="line-box">
	            <div class="line"></div>
        </div>        
        </label> <button type="submit">submit</button>
        <div style="display:none;">
        <input type="text" name="member_cash" id="member_cash" value="0">
        <input type="text" name="member_point" id="member_point" value="0">
        <input type="text" name="member_grade" id="member_grade" value="1" >
        </div>
    </form>




    
       <script>
		function idck() {
		var member_id = document.getElementById("member_id");
		member_id.readonly = false;
		if (member_id.value == "")
		{
		alert("아이디를 입력해주세요");
		}else{
		window.open("id_ck.jsp?cid="+member_id.value,"","width=500,height=300,top=300,left=100");
		}

	}
    </script>
</div>
</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>