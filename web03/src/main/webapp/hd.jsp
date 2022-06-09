<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ page import="com.shop.common.CcodeVO"%>
<%@ page import="com.shop.common.DcodeVO"%>
<%@ page import="com.shop.model.CodeDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   
<%
   CodeDAO DAO = new CodeDAO();
   ArrayList<CcodeVO> Volist = DAO.getCcode();
   ArrayList<DcodeVO> Volist2 = DAO.getDcode();
   request.setAttribute("Volist", Volist);
   request.setAttribute("Volist2", Volist2);   
%>
    
    
    
    <style>
    .menu_sub{
    	
   		width:130px;
		display:none;
		position: absolute;
		background-color:#343a40!important ;
		z-index: 999;
		border: 2px solid #fff;
		border-top: 0;
		top:56px;
    
    }
    
    .menu_sub li{
        	line-height: 1.5em;
        	color:#fff;
        	font-size:16px;
        	margin-left:1em;
    }
    .menu_sub a{color:#fff;}
    </style>

 
 

 
 
 
 <!--  -->

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${path }"><img alt="logo" src="./img/index/logo_1.png" style="width: 200px;height: 40px;"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor02" style="justify-content: space-around;">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
<%--           <a class="nav-link active" href="${path }">Home
            <span class="visually-hidden"></span>
          </a> --%>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${path }/GetBoardListCtrl">공지사항</a>
        </li>
<%--         <li class="nav-item">
          <a class="nav-link" href="${path }/GetGoodsList_mCtrl">상품게시판</a>
        </li> --%>
<%--         <li class="nav-item">
          <a class="nav-link menu_goods">쇼핑 게시판</a>
          	<ul class="menu_sub">
          		<c:forEach items="${Volist }" var="Vo" varStatus="status">
          		<li><a href="${path }/GetGoodsList_tCtrl?code=${Vo.ccode }">${Vo.ccode_res }</a></li>
          		</c:forEach>
          	</ul>
        </li> --%>

        <c:forEach items="${Volist }" var="Vo" varStatus="status">
        <li class="nav-item">
    
    
          <a class="nav-link menu_goods">${Vo.ccode_res } </a>
          	<ul class="menu_sub">
          	
          		<c:forEach items="${Volist2 }" var="Vo2" varStatus="status">
					<c:set var = "string1" value = "${fn:substring(Vo.ccode,0,1) }"/>
					<c:set var = "string2" value = "${fn:substring(Vo2.dcode,0,1) }"/>
					<c:if test="${string1 == string2 }">
          		<li><a href="${path }/GetGoodsList_tCtrl#${Vo2.dcode }">${Vo2.dcode_res }</a></li>
					</c:if>
          		</c:forEach>
          	</ul>
        </li>
        </c:forEach>

      <!-- 운영자게시판 -->
      <c:if test="${sid == 'admin' }">
<%--           <li class="nav-item">
          <a class="nav-link" style="color:pink;">     |||||     </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${path }/GetMemberListCtrl" style="color:pink;">멤버리스트(admin)</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${path }/GetGoodsListCtrl" style="color:pink;">상품리스트(admin)</a>
        </li>        
        <li class="nav-item">
          <a class="nav-link" href="${path }/GetOrderListCtrl" style="color:pink;">주문(admin)</a>
        </li> --%>
         <li class="nav-item">
          <a class="nav-link" href="${path }/index_admin.jsp" style="color:pink;">관리자페이지</a>
        </li>
        <%-- <li class="nav-item">
          <a class="nav-link" href="${path }/AccessListCtrl" style="color:pink;">접속로그(admin)</a>
        </li> --%>
      </c:if>
	  <!-- 운영자게시판 -->
      </ul>

      <c:if test="${sid == null }">
      		<ul class="navbar-nav me-auto" style="float: right;">
        <li class="nav-item">
          <a class="nav-link active" href="${path }/member/login.jsp">로그인
            <span class="visually-hidden"></span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${path }/member/agreement.jsp">회원가입
            <span class="visually-hidden"></span>
          </a>
        </li>
      </ul>
      </c:if>
      
      <c:if test="${sid != null }">
            		<ul class="navbar-nav me-auto" style="float: right;">
        <li class="nav-item">
          <a class="nav-link active" href="${path }/GetMyPageCtrl?uid=${sid }">${sname } (${sid })
            <span class="visually-hidden"></span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${path }/GetOrderListCtrl_m">${sname }의 주문내역
            <span class="visually-hidden"></span>
          </a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" href="${path }/GetBasketListCtrl">${sname }의 장바구니
            <span class="visually-hidden"></span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${path }/LogoutMemberCtrl">로그아웃
            <span class="visually-hidden"></span>
          </a>
        </li>
      </ul>
      </c:if>

    </div>
  </div>
</nav>
<script type="text/javascript">

$('.menu_goods').eq(0).click(function(){
	
	var v1 = $('.menu_sub').eq(0).css('display');
	if (v1 == 'none'){
		menuac()
		$('.menu_sub').eq(0).css('display','block');	
	} else{
		menuac()
	}
});

$('.menu_goods').eq(1).click(function(){
	
	var v1 = $('.menu_sub').eq(1).css('display');
	if (v1 == 'none'){
		menuac()
		$('.menu_sub').eq(1).css('display','block');	
	} else{
		menuac()
	}
});

$('.menu_goods').eq(2).click(function(){
	
	var v1 = $('.menu_sub').eq(2).css('display');
	if (v1 == 'none'){
		menuac()
		$('.menu_sub').eq(2).css('display','block');	
	} else{
		menuac()
	}
});

$('.menu_goods').eq(3).click(function(){
	
	var v1 = $('.menu_sub').eq(3).css('display');
	if (v1 == 'none'){
		menuac()
		$('.menu_sub').eq(3).css('display','block');	
	} else{
		menuac()
	}
});

$('.menu_goods').eq(4).click(function(){
	
	var v1 = $('.menu_sub').eq(4).css('display');
	if (v1 == 'none'){
		menuac()
		$('.menu_sub').eq(4).css('display','block');	
	} else{
		menuac()

	}
});

function menuac(){
	for(i=0;i<$('.menu_sub').length;i++){
		$('.menu_sub').eq(i).css('display','none');
		}
}
</script>

