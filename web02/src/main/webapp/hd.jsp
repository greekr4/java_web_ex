<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//로그인여부
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
	if (sid != null) sid=sid.trim().toLowerCase();

%>
    
    
    
   <div class="hd_top">
            <div class="hd_wrap_top">
                <ul class="LANGUAGES">LANGUAGES
                    <li>CHINESE</li>
                    <li>JAPANESE</li>
                    <li>ENGLISH</li>
                </ul>
                <ul class="dd">
                    <li>(사)여수시관광협의회</li>
                    <li>순천여행</li>
                    <li>광양문화관광</li>
                </ul>
                <ul class="dd2" id="">
                    <li>물때표</li>
                    <li>홍보물신청 및 지도 다운로드</li>
                    <li>교통정보</li>
                    <li>로그인</li>
                    <li><a href="/web02/GetCustomerListCtrl">회원목록</a></li>
                    <li><a href="/web02/GetTour_viewListCtrl">투어뷰목록</a></li>
                    <li><a href="/web02/GetTour_boardListCtrl">투어보드목록</a></li>
                    <li><a href="/web02/GetTour_commentListCtrl">투어코맨트목록</a></li>
                </ul>
</div>