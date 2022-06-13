<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태균낚시마트</title>
<!--  -->
<script src="./js/jquery-latest.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/ft.css">
<!--  -->




<style>
.main_image{
clear: both;
width: 100%;
height: 515px;
}
.main_item1{
position:absolute;
}
.main_item2{
position:absolute;
display:none;
}
.main_item3{
position:absolute;
display:none;
}
.main_item4{
position:absolute;
display:none;
}

.main_sale{
clear: both;
width: 1300px;
margin: 0 auto;
}
.ct_wrap{
clear:both;
}
img{
display: block;
width: 100%;
}

<!-- -->
.section1 {margin:40px auto 0;}
.section1 .today_special {width:420px;float:left;}
.section1 .today_special p {height:15px;font-size:16px;line-height:16px;font-family:'Oswald';margin-bottom:40px;border-left:2px solid #aeaeae;padding-left:10px;color:#010101;letter-spacing:2px;font-weight:bold;}
.section1 .today_special p span {color:#777;font-size:13px;font-family:'Nanum Gothic';padding-left:10px;letter-spacing:0;font-weight:normal;}
.section1 .today_special ul li {float:left;border-left:1px solid #dedede;}
.section1 .today_special ul li:first-child {border:0;}

.thumb_today {border:1px solid #e9e9e9;}
.thumb_today img { width:128px; height:128px; }
.today_special .info {width:250px; padding:0px;text-align:left;background-color:#fff;display:inline-block; }
.today_special .dsc {margin-top:0px !important; margin-bottom:10px;  padding-top:0px !important;  font-weight:normal !important; font-size:13px !important; padding-bottom:10px; color:#222; word-break:break-all; border-bottom:1px solid #e9e9e9;}
.today_special .subname { margin-top:3px;  font-weight: normal; font-size:12px;color:#888;word-break:break-all;padding-bottom:5px;}
.today_special .consumer { margin-top:5px; color:#888;font-size:12px; text-decoration:line-through;}
.today_special .price { margin-top:3px; font-weight: bold; color:#333;font-size:17px; }



.section1 .hot_trend {width:380px;float:left;}
.section1 .hot_trend p {height:15px;font-size:16px;line-height:16px;font-family:'Oswald';margin-bottom:40px;border-left:2px solid #aeaeae;padding-left:10px;color:#010101;letter-spacing:2px;font-weight:bold;}
.section1 .hot_trend p span {color:#777;font-size:13px;font-family:'Nanum Gothic';padding-left:10px;letter-spacing:0;font-weight:normal;}
.section1 .hot_trend ul li {float:left;border-left:1px solid #dedede;}
.section1 .hot_trend ul li:first-child {border:0;}


.section1 .hot_news {width:382px;float:right;}
.section1 .hot_news p {height:15px;font-size:16px;line-height:16px;font-family:'Oswald';margin-bottom:24px;color:#010101;letter-spacing:2px;font-weight:bold;
    border-left: 2px solid #aeaeae;
    padding-left: 10px;}
.section1 .hot_news p span {color:#777;font-size:13px;font-family:'Nanum Gothic';padding-left:10px;letter-spacing:0;font-weight:normal;}
.section1 .hot_news .list {border:1px solid #dedede;width:344px;height:100%;padding:0 18px;
margin-top:50px;}
.section1 .hot_news .list li {width:100%;overflow:hidden;height:23px;line-height:23px;}
.section1 .hot_news .list li a {height:23px;line-height:23px;color:#555;}
.section1 .hot_news .list li a:hover {color:#888;}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="hd.jsp"></jsp:include>
</header>
<div class="ct">
	<div class="ct_wrap">
		<div class="main_image">

			<a href="./GetGoodsList_tCtrl#A11"><img alt="1" src="./img/index/1.jpg" class="main_item1"></a>
			<img alt="2" src="./img/index/2.jpg" class="main_item2">
			<img alt="3" src="./img/index/3.jpg" class="main_item3">
			<img alt="4" src="./img/index/4.jpg" class="main_item4">

		</div>
		<div class="main_sale">
			<div class="sale_tit">
					<div class="cboth section1">
		
		<!-- 오늘의 특가 상품 -->
		<div class="today_special">
			<p class="cboth">TODAY SALE<span style="color:#f84620;">오늘의 특가!</span></p>		
			<div class="cboth today prd-list">
								<div class="fleft">
				<div class="info">
				<div class="dsc">잭슨 QU-ON 버라지 스위머 지그</div>
				<div class="subname">1/4oz 3/8oz 1/2oz 5/8oz</div>
				<div class="subname">잭슨</div>
				<div class="consumer">5,500원</div>			
				<div class="price">3,800원</div>

				
				</div>
				</div>
				<div class="thumb_today fright"><a href="#"><img class="MS_prod_img_l" src="./img/019030000148.jpg"></a></div>
							</div>
		</div><!-- //hot_trend -->

		<!-- 최신 트렌드 브랜드 -->
		<div class="hot_trend">
			<p>CATEGORY<span>봄 배스. 미노우 시즌</span></p>
			<ul>
			<li><a href="#"><img src="./img/1.jpg"></a><li>
			</ul><!-- //hot_trend_img -->
		</div><!-- //hot_trend -->

		<div class="hot_news">
			<p>HOT NEWS<span>다양한 소식을 알려드립니다</span></p>
			<ul class="list">
								<li>- <a href="#">[공지] 공지10</a></li>
								<li>- <a href="#">[공지] 공지9</a></li>
								<li>- <a href="#">[공지] 공지8</a></li>
								<li>- <a href="#">[공지] 공지7</a></li>
								<li>- <a href="#">[공지] 공지6</a></li>
								<li>- <a href="#">[공지] 공지5</a></li>
								<li>- <a href="#">[공지] 공지4</a></li>
								<li>- <a href="#">[공지] 공지3</a></li>
								<li>- <a href="#">[공지] 공지2</a></li>
								<li>- <a href="#">[공지] 공지1</a></li>
							</ul>
		</div><!-- //hot_news -->
	</div><!-- //section1 -->
			</div>
			
		</div>
	</div>
</div>
	<script type="text/javascript">
		setInterval(() => {
			var item1 = $('.main_item1').css('display')
			var item2 = $('.main_item2').css('display')
			var item3 = $('.main_item3').css('display')
			var item4 = $('.main_item4').css('display')
			if (item1 == 'block' && item2 == 'none'){
				$('.main_item1').fadeOut(500);
				$('.main_item2').delay(100).fadeIn(500);
			} else if (item2 == 'block' && item3 == 'none'){
				$('.main_item2').fadeOut(500);
				$('.main_item3').delay(100).fadeIn(500);
			} else if (item3 == 'block' && item4 == 'none'){
				$('.main_item3').fadeOut(500);
				$('.main_item4').delay(100).fadeIn(500);
			} else if (item4 == 'block' && item1 == 'none'){
				$('.main_item4').fadeOut(500);
				$('.main_item1').delay(100).fadeIn(500);
			}
		}, 4000);
		
		
		$.ajax({				
			url : "./GetBoardListCtrl_Json", // MemberJSONCtrl의 JSONObject 값을 가져옴
			dataType : "json", // 데이터 타입을 json
			contentType: 'application/x-www-form-urlencoded; charset=euc-kr', // UTF-8처리
			cache : false, // true : 새로 고침 동작을 하지 않고, 저장된 캐시에서 불러오게됨, false:새로 불러옴 
			success : function(data) {
						//key[0] 키값 

	
						var key = Object.keys(data["list"][0]); // 키값(항목명)을 가져옴		
						$.each(data.list, function(index, list) { // 이치를 써서 모든 데이터들을 배열에 넣음				
						var items = [];	
						
						$(".list").append("<li><a href='#'>" + list.tit + "<a/></li>"); 
						}); //each 끝
						
							
					}			
			});	
	
		</script>
<footer id="ft">
<jsp:include page="ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>