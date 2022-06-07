<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        .gbox{
            width: 1000px;
            height: 500px;
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
</style>
</head>
<body>
<div class="container2">
<header id="hd">
<jsp:include page="../hd.jsp"></jsp:include>
</header>
<div class="ct">
    <div class="gbox">
        <div class="gimg">
        
            <img src="./img/${GoodsVo.gimage }" alt="">
        </div>
        <div class="gtxt_wrap">
            <div class="gcon">
            <h4>${GoodsVo.gname }</h4>
            <p>${GoodsVo.gdetail }</p>
            <p>가격 : <fmt:formatNumber value="${GoodsVo.gprice}" pattern="#,###"/>원</p>
            <c:if test="${GoodsVo.gamount <= 0 }">
            <p style="color:red;">품절</p>
            </c:if>
            <c:if test="${GoodsVo.gamount > 0 }">
            <p>남은 수량 : ${GoodsVo.gamount }</p>
            </c:if>
            
            <p>수량     
            <input type="number" value="1" style="text-align: center; width: 50px" id="amount">
            </p>
            <p id="tot">총합 : <fmt:formatNumber value="${GoodsVo.gprice}" pattern="#,###"/>원</p>
            <p>옵션
            <select name="" id="">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>               
            </select>


             <p>옵션2
			    <c:choose>
       			<c:when test="${GoodsVo.goption2 > 0 }">
       			<select name="" id="">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>   
                </select> 
                </c:when>
                
                <c:otherwise>
                 <select name="" id="">
                <option value="0">옵션없음</option>  
                </select> 
                </c:otherwise>           

       		</c:choose>
            </p>
           <!--  <p><button>주문하기</button></p> -->
            <p><button id="addBasket">장바구니</button></p>
        </div>
        </div>

    </div>
    <div class="coment_wrap">
    	<div class="coment_top">
    		<h2>이용후기</h2>
    	</div>
    	<div class="coment_main">
			<div class="thumbs">★★★★★</div>
			<div class="detail">좋아요</div>
			<div class="id">admin</div>
    	</div>
    </div>
    
    <style>
    .coment_wrap{
    clear:both;
    width: 800px;
    margin:0 auto;
    }
    .coment_top{
    text-align: center;
    border-bottom: 1px solid #000;
    }
    .coment_main{
    margin-top: 30px;
    display: flex;
    text-align: center;
    }
    .coment_main .thumbs{
    width: 30%;
    border-left: 1px solid #000;
    border-right: 1px solid #000;
    }
    .coment_main .detail{
    width: 60%;
    border-right: 1px solid #000;
    }
    .coment_main .id{
    width: 10%;
    border-right: 1px solid #000;
    }
    </style>
</div>
<script type="text/javascript">
$('#amount').change(function(){
	var val1 = parseInt($('#amount').val());
	var val2 = ${GoodsVo.gprice};
	var val3 = parseInt(val1 * val2).toLocaleString('en');
	$('#tot').text("총합 : " + val3+"원");
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