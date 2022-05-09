<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/elogo.jpg">
    <link rel="apple-touch-icon" href="./img/elogo.jpg">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="https://www.samwha.co.kr/electric/">
    <meta name="title" content="삼화전기">
    <meta name="description" content="삼화전기의 제품소개,기술정보,새소식,기술지원">
    <meta name="keywords" content="삼화전기,Green-Cap(EDLC),Hybrid Cap">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="https://www.samwha.co.kr/electric/">
    <meta property="og:title" content="삼화전기">
    <meta property="og:description" content="삼화전기의 제품소개,기술정보,새소식,기술지원">
    <meta property="og:image" content="./img/logo-square-letter.png">
    <title>삼화전기</title>
    <!-- 기본 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트/폰트 모듈 연결 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
    @font-face {
        font-family: 'scB';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    } 
    @font-face {
        font-family: 'ROKAF';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts2201-3@1.0/ROKAFSlabSerifBold.woff') format('woff');
        font-weight: normal;
        font-style: normal;
        }
    .join_wrap{
	clear: both;
	width: 1600px;
	margin: 0 auto;
	text-align: center;
	padding: 50px;
    }   
    .indata{
	margin-top:10px;
    }   
    .btn{
    margin-top:10px;
    width: 107.5px;
    }
    </style>
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <!-- <link rel="stylesheet" href="./css/reset.css"> -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="common.css">
    <style>
    /* font-family: 'Noto Sans KR', sans-serif;  */
    /* 내게 필요한 스타일 초기화 */


    /* 비주얼 슬라이더 */
    #vs { width: 100%; overflow: hidden;}
    .img_box { width: 500%;}
    .img_box li { float: left; width: 20%; position: relative;}
    .img_box li a { display: block;}
    .img_box li a img { display: block; width: 100%; height: auto;}
    .img_box .tit_box { position: absolute; top: 50px; left: 50px; color: #fff;
    text-shadow: 2px 2px 2px #333; padding-left: 40px; z-index: 30;}
    .vs_tit { font-size: 42px; line-height: 1.6; margin-top: 300px;}
    .vs_com { font-size: 20px; padding-top: 40px;}
    .btn_group { position:absolute; bottom:0px; left:90px; z-index:40; }
    .btn_group button { display:block; width: 80px; height: 80px; float:left; 
    background-color:rgba(0,0,0,0.6); border:none; outline: none; color:#fff; display:block;}
    .btn_group button i[class*='xi'] { color: #fff; }
    .btn_group button:hover i[class*='xi'] { cursor:pointer; color:gold; }

    /* 그리드 박스 */
    .grid_box { clear: both; width: 100%; }
    .grid_wrap { clear: both; width: 100%;}
    .grid_wrap li { float: left; height: 16.66667vw; background-position: center center; font-size: 15px;}
    .grid_wrap li.item1 { background-image: url(./img/min1.png);}
    .grid_wrap li.item2 { background-image: url(./img/min2.png);}
    .grid_wrap li.item3 { background-image: url(./img/min3.png);}
    .grid_wrap li.item4 { background-image: url(./img/min4.png);}
    .grid_wrap li.item5 { background-image: url(./img/min5.png);}
    .grid_wrap li.item6 { background-image: url(./img/min6.png);}

    /* 그리드 */
    .col1 { width: 8.33333%; }
    .col2 { width: 16.66667%; }
    .col3 { width: 25%; }
    .col4 { width: 33.33333%; }
    .col5 { width: 41.66667%; }
    .col6 { width: 50%; }
    .grid_wrap li a { display:block; padding: 28px; }
    .col_tit, .col_com { color:#000; }
    .col_tit { padding-top: 18px; }
    .col_tit.w , .col_com.w { color:#fff; text-shadow:1px 1px 1px #333; }
    .col_tit.w { padding-top: 0; }
    .arrow { display:block; margin-top: 50px; }
    .arrow:before { content:""; display:block; width:2px; height:5px; 
    border-bottom:3px solid #555; float:left; transition:0.4s; }
    .arrow:after { content:""; display:block; width: 30px; height: 8px; 
    background-image: url("./img/newsletter_arrow_black.png"); float:left; }
    .col_com { font-size:13px; padding-top: 20px; font-weight: 200;  }
    .grid_wrap li:hover a .arrow:before { width: 18px;  }



    </style>
</head>
<body>
    <div class="wrap">
        <header id="hd">
		<%@ include file="nav.jsp" %>
        </header>
        <div id="content">
        <div class="join_wrap">
        			<h2>회원가입</h2>
			<form id="frm2" name="join" action="joinPro.jsp" method="post">
				<ul>
					<li><input type="text" class="indata" id="id" name="id" placeholder="아이디입력"  value="" required></li>
					<li><button type="button" onclick="chackId()" class="btn" id="checkId" name="checkId">중복확인</button>
						<button type="button" onclick="chackId2()" class="btn" id="chackId_reset" name="chackId_reset">다시 입력</button>
					</li>
					<input type="hidden" name="hidden" values="idUncheck">
					<li><input type="password" class="indata" id="pw" name="pw" placeholder="비밀번호입력" required></li>
					<li><input type="password" class="indata" id="pw_c" name="pw_c" placeholder="비밀번호확인" required></li>
					<li><input type="text" class="indata" id="name2" name="name2" placeholder="이름입력" required></li>
					<li><input type="tel" class="indata" id="phone" name="phone" placeholder="전화번호입력"></li>
					<li><input type="text" class="indata" id="address" name="address" placeholder="주소입력"></li>
					<li class="btn_frame">
						<button type="button" onclick="join_btn()" class="btn" id="submit_btn" name="submit_btn">회원가입</button>
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
        
		</div>
        <footer id="ft">
            <%@ include file="ft.jsp" %>
        </footer>
    </div>
</body>
</html>