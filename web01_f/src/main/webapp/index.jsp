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
            <div id="vs">
                <ul class="img_box">
                    <li>
                        <a href="">
                            <img src="./img/main_img.jpg" alt="메인이미지" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">SAMWHA Electric, the choice for the future!</h2>
                                <p class="vs_com">미래를 위한 선택, 삼화전기입니다!</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/55666.jpg" alt="Green-cap" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">Green-cap</h2>
                                <p class="vs_com">Single Cell / Module</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/58599.jpg" alt="Aluminum E-cap" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">Aluminum E-cap</h2>
                                <p class="vs_com">Hybrid Al E-cap. Miniature Al E-cap. Large Al E-cap. Surface Monut Al E-cap. <br> Conductive Polymer Al E-cap.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main06.jpg" alt="COMPANY" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">COMPANY</h2>
                                <p class="vs_com">창조적경영,윤리적경영 이념을 바탕으로 세계적 기업으로의<br>성장영량을 갖추도록 하는것</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main07.jpg" alt="PRODUCT SERCH" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">PRODUCT SERCH</h2>
                                <p class="vs_com">삼화전기 제품을 보다 빠르고 편리하게<br>검색하실 수 있습니다.</p> 
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></button>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div>
                <script>
                $(document).ready(function(){
                    wd = $(window).width();
                    var intv = setInterval(function(){
                        ani1();
                    }, 4000);
                    function ani1(){
                        $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 600, function(){
                            $(".img_box li").eq(0).appendTo($(".img_box"));
                            $(".img_box").css("margin-left","0px");
                        });
                    }
                    function ani2(){
                        $(".img_box").css("margin-left",-wd+"px");
                        $(".img_box li:last-child").prependTo($(".img_box"));
                        $(".img_box").not(":animated").animate({"margin-left":"0px"}, 600);
                    }
                    $(".btn_group .next_btn").click(function(){
                        clearInterval(intv);
                        ani1();
                        intv = setInterval(function(){ ani1(); }, 3000);
                    });
                    $(".btn_group .prev_btn").click(function(){
                        clearInterval(intv);
                        ani2();
                        intv = setInterval(function(){ ani1(); }, 3000);
                    });
                });    
                </script>
            </div>
            <div class="grid_box">
                <ul class="grid_wrap">
                    <li class="col2 item1">
                        <a href="">
                            <h3 class="col_tit">삼화전기 IR</h3>
                            <p class="col_com">경영정보 / 주식정보 / 공고 / IR문의</p>
                        </a>
                    </li>
                    <li class="col2 item2">
                        <a href="">
                            <h3 class="col_tit">샘플요청</h3>
                            <p class="col_com">샘플을 요청해주세요!</p>
                        </a>
                    </li>
                    <li class="col2 item3">
                        <a href="">
                            <h3 class="col_tit">대리점</h3>
                            <p class="col_com">국내대리점 / 해외법인판매!</p>
                        </a>
                    </li>
                    <li class="col2 item4">
                        <a href="">
                            <h3 class="col_tit">채용정보</h3>
                            <p class="col_com">삼화전기 채용정보안내!</p>
                        </a>
                    </li>
                    <li class="col2 item5">
                        <a href="">
                            <h3 class="col_tit">새소식</h3>
                            <p class="col_com">뉴스 / 신제품 소개 / 인증 및 특허</p>
                        </a>
                    </li>
                    <li class="col2 item6">
                        <a href="">
                            <h3 class="col_tit">기술지원</h3>
                            <p class="col_com"> 친환경활동 / FQA / 문의 </p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <script>
            $(document).ready(function(){
                $(".sel").change(function(){
                    location.href = this.value;
                });
            });    
            </script>
        <footer id="ft">
            <%@ include file="ft.jsp" %>
        </footer>
    </div>
</body>
</html>