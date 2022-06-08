<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태균낚시마트 - 상품</title>
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
        .gbox_wrap{
            width: 1400px;
            height: 560px;
            margin: 50px auto;
            
      
        }
        .gimg{
            float: left;
            width: 40%;
            

        }
        .gimg img{
            display: block;
            width: 100%;
        }
        .gtxt_wrap{
            float: left;
            width: 40%;
        }
        .gcon{
            margin-left: 100px;
        }
        
button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #343a40;
  width: 60%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
button:hover,.form button:active,.form button:focus {
  background: #444a50;
}


.gname{
border-top: 2px solid #000;
border-bottom: 1px solid #bbb;
}
.gname h4{
font-size: 16px;
line-height: 2em;
font-weight: bold;
margin: 0;
}
.gdetail{
font-size: 14px;
color: #777;
margin-bottom: 3px;
}
.gcode{
text-align: right;
font-size: 12px;
color:#777;
line-height: 2em;
}


.getc{
font-size: 14px;
color:#777;
margin-bottom: 2em;
}

tr{
line-height: 2em;
}


td.one:before{
content: ">";
font-size: 0.5em;
padding-right: 1em;
}
td.one{
padding-right: 2em;
}
td.price{
line-height: 2.5em;
font-size:24px;
color:red;
width: 78%;
}
td.price2{
color:red;
text-decoration: line-through;
}
.pricetr{
border-bottom: 1px solid #bbb;
}
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
 <div class="gbox_wrap">
    <div class="gbox">
        <div class="gimg">
        
            <img src="./img/${GoodsVo.gimage }" alt="">
        </div>
        <div class="gtxt_wrap">
            <div class="gcon">
            	<div class="gcode">
            	상품코드 : ${GoodsVo.gcode }
            	</div>
            	<div class="gname">
            	<h4>${GoodsVo.gname }</h4>
	            	<div class="gdetail">
	            	${GoodsVo.gdetail }
	            	</div>
            	</div>
            	<div class="getc">
            		<table>
            		
            		
            		<tr class="pricetr">
            		<td class="one">판매가</td>
            		<td class="price"><fmt:formatNumber value="${GoodsVo.gprice}" pattern="#,###"/>원</td>
            		</tr>
            		
            		<tr>
            		<td class="one">소비자가</td>
            		<td class="price2"><fmt:formatNumber value="${GoodsVo.gprice*1.2}" pattern="#,###"/>원</td>
            		</tr>
            		
            		<tr>
            		<td class="one">적립금</td>
            		<td class=""><fmt:formatNumber value="${GoodsVo.gprice*0.1}" pattern="#,###"/>원 (10%)</td>
            		</tr>
            		
            		<tr>
            		<td class="one">배송비</td>
            		<td class="">평생무료</td>
            		</tr>
            		
            		<tr>
            		<td class="one">배송정보</td>
            		<td class="">당일 발송! 택배업체 : 태균택배 </td>
            		</tr>
            		
            		<tr>
            		<td class="one">남은수량</td>
            		<td class="">
            		<c:if test="${GoodsVo.gamount <= 0 }">
            		<span style="color:red;">품절</span>
            		</c:if>
            		<c:if test="${GoodsVo.gamount > 0 }">
            		<span>남은 수량 : ${GoodsVo.gamount }</span>
            		</c:if>
            		</td>
            		</tr>
            		
            		<tr>
            		<td class="one">수량선택</td>
            		<td class=""><input type="number" value="1" style="text-align: center; width: 47px; height: 23px;" id="amount"></td>
            		</tr>
            		
            		<tr>
            		<td class="one">총가격</td>
            		<td class=""><span id="tot"><fmt:formatNumber value="${GoodsVo.gprice}" pattern="#,###"/>원</span></td>
            		</tr>
            		
            		<tr>
            		<td class="one">필수옵션</td>
            		<td class="">
            	 <select name="" id="">
                <option value="1">111</option>
                <option value="2">222</option>
                <option value="3">333</option>
                <option value="4">444</option>               
           		 </select>
            		</td>
            		</tr>            		
            		
            		</table>
            	</div>

       
           	<p><button onclick="alert('구현중....');">바로구매</button></p>
            <p><button id="addBasket">장바구니</button></p>
        </div>
        </div>

    </div>
   </div>
    <div class="coment_wrap">
    	<div class="coment_top">
    		상품평 (
    	<c:choose>
    	<c:when test="${not empty CommentVO }">
    		<c:forEach items="${CommentVO }" var="Vo" varStatus="status">
    		<c:set var="indexval" value="${status.index+1 }" />
    		</c:forEach>
    	</c:when>
    	<c:otherwise>
    	0
    	</c:otherwise>
    	</c:choose>
    	${indexval }
    	)
    	<div class="create"><a onclick="create('${GoodsVo.gcode }','${sid}');">작성</a></div>
    	</div>
    	<c:choose>
    	
    	<c:when test="${not empty CommentVO }">
		    	<c:forEach items="${CommentVO }" var="Vo" varStatus="status">
		    	
		    	
		    	<div class="coment_main">
					<div class="thumbs">
					<c:choose> 
					<c:when test="${Vo.thumb == 5}">
					★★★★★ <span class="ctxt">아주만족</span>
					</c:when> 
					<c:when test="${Vo.thumb == 4}">
					★★★★☆ <span class="ctxt">만족</span>
					</c:when> 
					<c:when test="${Vo.thumb == 3}">
					★★★☆☆ <span class="ctxt">약간만족</span>
					</c:when> 
					<c:when test="${Vo.thumb == 2}">
					★★☆☆☆ <span class="ctxt">약간불만족</span>
					</c:when> 
					<c:when test="${Vo.thumb == 1}">
					★☆☆☆☆ <span class="ctxt">아주불만족</span>
					</c:when> 
					<c:otherwise>
					☆☆☆☆☆ 쓰레기
					</c:otherwise> 
				</c:choose> 
				</div>
					<div class="id"><span class="ctxt">작성자 : ${Vo.user_id }</span></div>
					<div class="detail"><span class="ctxt">${Vo.cdetail }</span></div>
		    	</div>
		    	
		    	
		    	</c:forEach>
    	</c:when>
    	<c:otherwise>
					    	<div class="coment_main">
					    	<h4 style="text-align: center; width: 100%">아직 후기가 없습니다~</h4>
					    	</div>
		</c:otherwise> 
    	</c:choose>
    </div>
    
    <style>
    .create{
    float: right;
   
    }
    .create a{
     color: blue;
     }
    .coment_wrap{
    clear:both;
    width: 1400px;
    margin:0 auto;
    margin-top: 50px;
    }
    .coment_top{
    text-align: left;
    border-bottom: 1px solid #bbb;
    }
    .coment_main{
    margin-top: 30px;
    }
    .coment_main .thumbs{
    float: left;
    }
    .coment_main .id{
    float: right;
    }
    .coment_main .detail{
    border-top: 1px solid #bbb;
    border-bottom: 1px solid #bbb;
    clear: both;
    }

    .thumbs{
    color:red;
    }
    .ctxt{
    color:#777;
    }
    </style>
</div>
<script type="text/javascript">
function create(gcode,sid){
var href="./comment/addcommentForm.jsp?gcode="+gcode+"&sid="+sid
window.open(href,'추가','width=430,height=540,location=no,status=no,scrollbars=no');
}



$('#amount').change(function(){
	var val1 = parseInt($('#amount').val());
	var val2 = ${GoodsVo.gprice};
	var val3 = parseInt(val1 * val2).toLocaleString('en');
	$('#tot').text(val3+"원");
});


$('#addBasket').click(function(){
	var bamount = $('#amount').val();
	var amount = ${GoodsVo.gamount };
	if (amount < bamount){
		alert('수량을 확인해주세요!');
		return;
	}else {
	window.open('./AddBasketCtrl?gcode=${GoodsVo.gcode }&bamount='+bamount,'hiddenframe1','width=430,height=1080,location=no,status=no,scrollbars=no');	
	}
});




</script>
<iframe width=0 height=0 name="hiddenframe1" style="display:none;"></iframe>
<footer id="ft">
<jsp:include page="../ft.jsp"></jsp:include>
</footer>
</div>
</body>
</html>