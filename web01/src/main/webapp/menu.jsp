<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String Mmenu[] = {"Company","Products","Careers","Support","테스트"};
String Smenu[][] = {
		{"회사개요","CEO 인사말","연혁","비전","수상현황","계열사 소개","CI/BI","Contact us"},
		{"일반조명","LED조명","산업용조명"},
		{"인재상","인사제도","복리후생","채용안내"},
		{"대리점 개설","고객센터","FAQ","전국 지사안내"},
		{"테스트추가","테스트2"}
};
String lnk[][] = {
		{"sub11.html","sub11.html","sub11.html","sub11.html","sub11.html","sub11.html","sub11.html","sub11.html"},
		{"sub11.html","sub11.html","sub11.html"},
		{"sub11.html","sub11.html","sub11.html","sub11.html"},
		{"sub11.html","sub11.html","sub11.html","sub11.html"},	
		{"테스트","테스트2"}
};


%>


<div class="hd_wrap">
<a class="logo" href="index.jsp"><img alt="" src="img/logo.png"></a>
<nav id="gnb">
<ul>
<%
for(int i=0;i<Mmenu.length;i++){
%>
<li>
<span><%=Mmenu[i] %></span>
<ul class="sub">
<%
for(int j=0;j<Smenu[i].length;j++){
%>

<li><a href=<%=lnk[i][j] %>><%=Smenu[i][j] %></a></li>

<%
}
%>
</ul>
<%
}
%>


</ul>
</nav>
                <p id="tnb">
                <% 
                String test = (String) session.getAttribute("uid");
                if (test == null){
                	%>
                	<a href="login.jsp">로그인</a>
                	<%
                } else {
                	%>
                	 <a href=""><%=test %>님</a>
                	 <a href="logout.jsp">로그아웃</a>
                	<%
                }
                	%>

                     <a href="">사이트맵</a>
                     <a href="">오시는길</a>
                 </p>
</div>	
		