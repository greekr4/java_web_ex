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
    <link rel="stylesheet" href="sub_common.css">
    <style>
    </style>
</head>
<body>
    <div class="wrap">
        <header id="hd">
			<%@ include file="nav.jsp" %>
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./img/product_1.jpg" alt="Green-cap">
                        <div class="tit_box">
                            <h2 class="sub_tit">Green-cap</h2>
                            <p class="sub_com">일반적으로 활성탄을 전극 소재로 사용하는 초고용량 캐패시터(supercapacitor)를 전기이중층 캐패시터(EDLC)라고 부른다<br>
                                EDLC는 사이클 특성이 탁원한 차세대 전기 에너지 저장 장치이다</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel" class="sel">
                                        <option value="product.html#page1">Green-cap</option>
                                        <option value="product.html#page2">Aluminum E-cap</option>
                                        <option value="product.html#page3">New Products</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./img/product_2.jpg" alt="Aluminum E-cap">
                        <div class="tit_box">
                            <h2 class="sub_tit">Aluminum E-cap</h2>
                            <p class="sub_com">알루미늄 전해 커패시터 전해질로서 전도성 고분자와 전해액을 혼합 적용한 커패시터이다.<br>
                                                유전체 자가복원이 가능한 전도성 고분자 하이브리드 알루미늄 전해 커패시터이다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel" class="sel">
                                        <option value="product.html#page2">Aluminum E-cap</option>
                                        <option value="product.html#page1">Green-cap</option>
                                        <option value="product.html#page3">New Products</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./img/product_3.jpg" alt="New Products">
                        <div class="tit_box">
                            <h2 class="sub_tit">New Products</h2>
                            <p class="sub_com">Large Al E-cap<br>
                                SNAP-IN 제품은 단자 형상을PCB에 기립하여 장착되는 부품으로 수삽이 용이하고, 제품의 전압 및 용량의 크기가 큰 장점을 갖는다.<br>
                                SCREW TYPE 제품은 SCREW BOLT로 극성을 체결하는 부품으로, 대용량이나 산업용에 많이 사용되는 커패시터 입니다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel" class="sel">
                                        <option value="product.html#page3">New Products</option>
                                        <option value="product.html#page1">Green-cap</option>
                                        <option value="product.html#page2">Aluminum E-cap</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
            </div>
            <script>
                $(document).ready(function(){
                    $(".sel").change(function(){
                        location.href = this.value;
                    });
                });    
                </script>
        </div>
        <footer id="ft">
            <%@ include file="ft.jsp" %>
        </footer>

     </div>
 </body>
</html>