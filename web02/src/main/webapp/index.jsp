<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./jquery-latest.js"></script>
 <style>
.vs { width: 100%; clear: both; display:block;}
.img_box { width: 300%;}
.img_box li {float: left; width: 33.333%; position: relative;}
.img_box li a {display: block;}
.img_box li a img {display: block; width: 100%; height: auto;}
.img_box .tit_box{position: absolute;
	display:none;
    top: 200px; left: 500px;
    
    color: white;}
/* 메인메뉴 텍스트 */
.vs_tit{ font-size: 56px; line-height: 1.4em;}
.vs_com{ font-size: 15px; margin-top: 20px;}
.img_box .tit_box a {
display: inline-block;
vertical-align: top;
font-weight: bold;
font-size: 17px;
color: #fff;
width: 200px;
height: 47px;
border: 1px solid #fff;
box-sizing: border-box;
text-align: center;
line-height: 50px;
margin-top: 60px;
}
/* 앞으로가기 뒤로가기 */
.btn_group{
    position: absolute;
    font-size: 20px;
    top: 900px;
    left: 380px;

}
.btn_group span{
    color: #fff;
}
.btn_group .prev_btn:hover,.next_btn:hover{
    color: #bbb;text-shadow: 1.5px 1.5px 1.5px #000;
    cursor: pointer;
}
.ct_wrap {overflow: hidden; width: 100%; clear: both;}
.ct_wrap2 {overflow: hidden; width: 100%; clear: both;}
.festival_wrap{
height:400px;
background: url(./img/index/festival_bg.png) no-repeat center 100%;
}
.festival-box{display: flex; width: 100%;}
.festival-item{width: 24%;
background-color: #fff;
margin: 5px;
}
.festival-item img{
width: 288px;
height:216px;
display: block;
}
.festival-item .subTit{
	
	font-size: 20px;
    color: #222;
    font-weight:bold;
}
.festival-item .subTxt01{
	display: block;
    font-size: 18px;
    color: #666;
    margin-bottom: 21px;
    width: 100%;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.festival-item .subTxt02{
	font-size: 18px;
    font-weight: bold;
    color: #001075;
    padding-left: 25px;
    background: url(./img/index/ftDay_icon01.png) no-repeat 0% 50%;
    background-size: 18px 18px;
    
}
.festi-top{

}
.festi-bottom{
margin-top: 1em;
margin-bottom: 1em;
margin-left: 1em;
}
/*주요서비스*/
.mainSv_list{    position: absolute; bottom: -220px;  height: 160px;  background: #fff;   border-radius: 10px;    box-shadow: 1px 0px 11px rgba(0,0,0,0.4);    z-index: 5;
 width: 60%; 
 left: 20%;
 opacity: 0.6;

}
.mainSv_list ul {display:flex;  /* justify-content: space-evenly;*/}
.mainSv_list ul li {width:17%;    text-align: center;}
.mainSv_list ul li a {font-size:15px; font-family: 'SCDream5Medium';    padding-top: 110px;   padding-left: 30px;   padding-right: 30px;   display: block;}
.mainSv_list ul li.ms01 {    background: url(./img/index/mainSv_icon01.png) no-repeat 50% 35%; background-size:70px 70px;}
.mainSv_list ul li.ms02 {    background: url(./img/index/mainSv_icon02.png) no-repeat 50% 35%; background-size:70px 70px;}
.mainSv_list ul li.ms03 {    background: url(./img/index/mainSv_icon03.png) no-repeat 50% 35%; background-size:70px 70px;}
.mainSv_list ul li.ms04 {    background: url(./img/index/mainSv_icon04.png) no-repeat 50% 35%; background-size:70px 70px;}
.mainSv_list ul li.ms05 {    background: url(./img/index/mainSv_icon05.png) no-repeat 50% 35%; background-size:70px 70px;}
.mainSv_list ul li.ms06 {    background: url(./img/index/mainSv_icon06.png) no-repeat 50% 35%; background-size:70px 70px;}

 </style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>
<div class="ct" style="margin-top:0;">
<div class="ct_wrap">
                <div id="vs">
                    <ul class="img_box">
                        <li>
                            <a href=""><video src="./video/main_video01.mp4" id="video01" class="img" autoplay playsinline muted data-keepplaying ></video></a>
                            <div class="tit_box">
                                <h2 class="vs_tit">대한민국이 시작되는 곳,</h2>
                                <h2 class="vs_tit">여행의 시작 땅끝해남</h2>
                                
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="vs">
                    <ul class="img_box">
                        <li>
                            <a href=""><video src="./video/main_video02.mp4" id="video02" class="img" autoplay playsinline muted data-keepplaying ></video></a>
                            <div class="tit_box">
                                <h2 class="vs_tit">대한민국이 시작되는 곳,</h2>
                                <h2 class="vs_tit">여행의 시작 땅끝해남</h2>
                                
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="vs">
                    <ul class="img_box">
                        <li>
                            <a href=""><video src="./video/main_video04.mp4" id="video03" class="img" autoplay playsinline muted data-keepplaying ></video></a>
                            <div class="tit_box">
                                <h2 class="vs_tit">대한민국이 시작되는 곳,</h2>
                                <h2 class="vs_tit">여행의 시작 땅끝해남</h2>
                                
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="btn_group">
                    <span class="prev_btn">PREV</span>
                    <span >/</span>
                    <span class="next_btn">NEXT</span>
                </div>
                

                
                <div class="mainSv_wrap">
                <div class="mainSv_list">
					<ul>
					<li class="ms01"><a href="/tour/index.9is?contentUid=18e3368f79659a2f0179c54b5cfd6803">자전거코스</a></li>
					<li class="ms02"><a href="/tour/index.9is?contentUid=18e3368f655bdbc60166519927b30682">관광지도</a></li>
					<li class="ms03"><a href="/tour/index.9is?contentUid=18e3368f79659a2f01798c94554e4fe9">달마고도</a></li>
					<li class="ms04"><a href="/tour/index.9is?contentUid=18e3368f7b289e8e017b32a9111b04cb">관광책자 e-book</a></li>
					<li class="ms05"><a href="/tour/index.9is?contentUid=18e3368f655bdbc601665163d5a37f8f">축제일정</a></li>
					<li class="ms06"><a href="/index.9is?contentUid=18e3368f655bdbc601665199b4090698">교통안내</a></li>
					</ul>
                </div>
                </div>
                
                
                <div class="ct_wrap2">
                <div class="festival_wrap">
                <div class="" style="width: 1200px; margin: 0 auto; margin-top: 1em;">
                <img alt="" src="./img/index/festival_tit.png" style="margin:10px; display: block;">
                <div class="festival-box">
                	<div class="festival-item">
                		<div class="festi-top">
                			<img src="./img/index/ft_Img01.jpg">
                		</div>
                		<div class="festi-bottom">
					        <p class="subTit">달마고도 힐링축제</p>
					        <p class="subTxt01">다도해의 절경과 뺴어난 산세, 한국의 산티아고!</p>
					        <p class="subTxt02">22. 7월 중(예정)</p>
					        </div>
                		</div>
                		
                	  <div class="festival-item">
                		<div class="festi-top">
                			<img src="./img/index/ft_Img06.jpg">
                		</div>
                		<div class="festi-bottom">
							<p class="subTit">해남 미남(味南) 축제</p>
					        <p class="subTxt01">해남의 맛과 멋!</p>
					        <p class="subTxt02">22. 11. 4. ~ 22. 11. 6.</p>
					        </div>
                		</div>
                		
                		<div class="festival-item">
                		<div class="festi-top">
                			<img src="./img/index/ft_Img05.jpg">
                		</div>
                		<div class="festi-bottom">
                		        <p class="subTit">땅끝해넘이해맞이축제</p>
						        <p class="subTxt01">희망의 시작 , 대륙의 출발!!</p>
						        <p class="subTxt02">매년 12. 31. ~ 1.1.</p>
						  </div>
                		</div>
                		
        		     <div class="festival-item">
                		<div class="festi-top">
                			<img src="./img/index/ft_Img08.jpg">
                		</div>
                		<div class="festi-bottom">
							<p class="subTit">땅끝매화축제</p>
					        <p class="subTxt01">날이 좋아서, 소풍가기 좋은 날</p>
					        <p class="subTxt02">코로나19로 취소</p>
					        </div>
                		</div>
                		
                		
                		
                		
                		
                	</div>
                </div>
                </div>
                </div>
                
                
                
                
                </div>
                
                
                
                
                <script>
                    var slide = 1;
                    var autoplayv = 1;
                    /////////////////Next 버튼////////////
                    $(".next_btn").click(function(){
                        var v1 = $("#video01").get(0);
                            var v2 = $("#video02").get(0);
                            var v3 = $("#video03").get(0);
                            if (slide==1)
                            {
                            $("#video01").fadeOut(500);
                            setTimeout(function(){
                            $("#video02").fadeIn(700);
                            }, 500);
                            v2.currentTime = 0;
                            v2.play;
                            slide = 2;
                            } else if(slide==2){
                            $("#video02").fadeOut(500);
                            setTimeout(function(){
                            $("#video03").fadeIn(700);
                            }, 500);
                            v3.currentTime = 0;
                            v3.play;
                            slide = 3;
                            } else if(slide==3){
                            $("#video03").fadeOut(500);
                            setTimeout(function(){
                            $("#video01").fadeIn(700);
                            }, 500);
                            v1.currentTime = 0;
                            v1.play;
                            slide = 1;
                            }
                    });
                    /////////////////Prev 버튼////////////
                    $(".prev_btn").click(function(){
                        var v1 = $("#video01").get(0);
                            var v2 = $("#video02").get(0);
                            var v3 = $("#video03").get(0);
                            if (slide==1)
                            {
                            $("#video01").fadeOut(500);
                            setTimeout(function(){
                            $("#video03").fadeIn(700);
                            }, 500);
                            v3.currentTime = 0;
                            v3.play;
                            slide = 3;
                            } else if(slide==2){
                            $("#video02").fadeOut(500);
                            setTimeout(function(){
                            $("#video01").fadeIn(700);
                            }, 500);
                            v1.currentTime = 0;
                            v1.play;
                            slide = 1;
                            } else if(slide==3){
                            $("#video03").fadeOut(500);
                            setTimeout(function(){
                            $("#video02").fadeIn(700);
                            }, 500);
                            v2.currentTime = 0;
                            v2.play;
                            slide = 2;
                            }
                    });
                            
                            ///////기본
                            $("#video02").fadeOut(500);
                            $("#video03").fadeOut(500);
                            $("#video01").fadeIn(1000);
                            
                        var intv = setInterval(function(){   ani();     }, 1000);
                        //화면 자동 Next (6초 이상 재생시)
                        function ani(){
                            var v1 = $("#video01").get(0);
                            var v2 = $("#video02").get(0);
                            var v3 = $("#video03").get(0);
                            if (slide==1 & v1.currentTime > 6)
                            {
                            $("#video01").fadeOut(500);
                            setTimeout(function(){
                            $("#video02").fadeIn(700);
                            }, 500);
                            v2.currentTime = 0;
                            v2.play;
                            slide = 2;
                            } else if(slide==2 & v2.currentTime > 6){
                            $("#video02").fadeOut(500);
                            setTimeout(function(){
                            $("#video03").fadeIn(700);
                            }, 500);
                            v3.currentTime = 0;
                            v3.play;
                            slide = 3;
                            } else if(slide==3 & v3.currentTime > 6){
                            $("#video03").fadeOut(500);
                            setTimeout(function(){
                            $("#video01").fadeIn(700);
                            }, 500);
                            v1.currentTime = 0;
                            v1.play;
                            slide = 1;
                            }
                          



                        }
                        
                    </script>
            </div> <!--  ct wrap -->
         </div> <!-- ct div -->






</div>
<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>