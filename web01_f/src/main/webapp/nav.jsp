<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div class="hd_wrap">
                <a href="index.jsp" class="logo">
                    <img src="./img/elogo.jpg" alt="로고">
                </a>
                <nav id="gnb">
                    <ul>
                        <li>
                            <span>제품소개</span>
                            <ul class="sub">
                                <li><a href="product.jsp#page1">Green-cap</a></li>
                                <li><a href="product.jsp#page2">Aluminum E-cap</a></li>
                                <li><a href="product.jsp#page3">New Products</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>기술정보</span>
                            <ul class="sub">
                                <li><a href="technique.jsp#page1">Green-Cap(EDLC)</a></li>
                                <li><a href="technique.jsp#page2">Hybrid Cap</a></li>
                                <li><a href="technique.jsp#page3">Aluminum Cap</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>회사소개</span>
                            <ul class="sub">
                                <li><a href="company.jsp#page1">CEO 인사말</a></li>
                                <li><a href="company.jsp#page2">회사소개</a></li>
                                <li><a href="company.jsp#page3">관련사소개</a></li>
                                <li><a href="company.jsp#page4">찾아오시는 길</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>새소식</span>
                            <ul class="sub">
                                <li><a href="news.jsp#page1">뉴스</a></li>
                                <li><a href="news.jsp#page2">신제품 소개</a></li>
                                <li><a href="news.jsp#page3">채용FAQ</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>기술지원</span>
                            <ul class="sub">
                                <li><a href="support.jsp#page1">친환경 활동</a></li>
                                <li><a href="support.jsp#page2">샘플요청</a></li>
                                <li><a href="support.jsp#page3">국내대리점</a></li>
                                <li><a href="support.jsp#page4">S-PRM 시스템</a></li>
                                <li><a href="support.jsp#page5">문의</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
             <p id="tnb">
                <% 
                String sname = (String) session.getAttribute("uname");
                String sid = (String) session.getAttribute("uid");
                if (sid == null){
                	%>
                	<a href="login.jsp">로그인</a>
                	<a href="agree.jsp" style="color:red">회원가입</a>
                	<%
                } else {
                	%>
                	 <a href="mypage.jsp"><%=sname %>님</a>
                	 <a href="logout.jsp"style="color:red">로그아웃</a>
                	 <a href="board1.jsp"style="color:green">게시판</a>	
					<%if (sid.equals("admin")) {%>
                     <a href="memberList.jsp">멤버리스트</a>
                     
             		<%
					}}
                	%>
                 </p>
            </div>
