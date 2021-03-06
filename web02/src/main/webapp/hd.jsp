<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.go.haenam.model.tour_CDcodeVO"%>
<%@ page import="java.util.ArrayList"%>



<%
	//로그인여부
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
	if (sid != null) sid=sid.trim().toLowerCase();
	if (sid == null) sid="non-member";
%>
    
 <%
ArrayList<tour_CDcodeVO> CDcodeList = new ArrayList<tour_CDcodeVO>();
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";
try{
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
	sql = "select * from tour_ccode a "+
			"inner join tour_dcode b on substr(b.dcode,1,1) = a.ccode order by dcode";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		tour_CDcodeVO CDcode = new tour_CDcodeVO();
		CDcode.setCcode(rs.getString("CCODE"));
		CDcode.setCcode_res(rs.getString("CCODE_RES"));
		CDcode.setDcode(rs.getString("DCODE"));
		CDcode.setDcode_res(rs.getString("DCODE_RES"));
		CDcodeList.add(CDcode);
	}
}catch(Exception e){
	e.printStackTrace();
} finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
	e.printStackTrace();
	}
	
}
%>   
    

 <nav>
 
 <!-- 
<div class="hd_top">
<div class="hd_wrap_top">
<div class="tnb">
				<ul class="dd2" id="">
				<% if (sid.equals("admin")){ %>
	                <li><a href="/web02/GetCustomerListCtrl">회원목록</a></li>
                    <li><a href="/web02/GetTour_viewListCtrl">투어뷰목록</a></li>
                    <li><a href="/web02/GetTour_boardListCtrl">투어보드목록</a></li>
                    <li><a href="/web02/GetTour_commentListCtrl">투어코맨트목록</a></li>
                    <li><a href="/web02/GetNoticelistCtrl">공지사항관리</a></li>
                    <li><%=sid %>님 (<%=sname %>)</li>
                    <li><a href="/web02/logout.jsp">로그아웃</a></li>
                   <% }else if (sid.equals("non-member")){ %>
                   <li><a href="/web02/login.jsp">로그인</a></li>
     			   <li><a href="/web02/agreement.jsp">회원가입</a></li>
                   
                   <%}else{ %>
                   <li><a href="MypageCtrl">My page</a></li>
     			   <li><%=sid %>님 (<%=sname %>)</li>
     			   <li><a href="/web02/logout.jsp">로그아웃</a></li>
                   <%} %>
                </ul>
	</div>
	</div>
	</div>
-->
	
<div class="hd_bt" id="hd_bt">
	<div class="hb_wrap">
	<div class="logo">
	<a href="index.jsp"><img alt="로고" src="./img/index/h_logo.png"></a>
 	</div>
	<ul><span>미리보는 해남</span>
	<div class="submenu_box">
	<div class="submenu_wrap">
	<li>
	<ul class="submenu"><a href="GetTour_viewCtrl?pno=A11#A11"><span>자연관광</span></a>
	
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("A")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	
	</ul>
	
	</li>
	<li>
		<ul class="submenu"><span>관광명소</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("B")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	</li>
	<li>
	<ul class="submenu"><span>문화재</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("C")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	</li>
	<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>코스관광</span>
	
	
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("D")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	</li>
	<!-- 여기까지  -->
	<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>수련시설</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("E")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	
	<!--  여기까지  -->
	
	</li>
	</div>
	</div>
	</ul> <!-- 미리보는 해남 -->
	
	<ul><span>축제 한마당</span>
			<div class="submenu_box">
			<div class="submenu_wrap">
			<li>
			
	<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>축제</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("F")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	
	<!--  여기까지  -->
			
			</li>
			</div>
			</div>
	</ul> <!-- 축제 한마당 -->
	
 	<ul><span>음식·숙박·쇼핑</span>
			<div class="submenu_box">
			<div class="submenu_wrap">
			<li>
			
				<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>음식</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("G")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	
	<!--  여기까지  -->
	<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>숙박</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("H")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	
	<!--  여기까지  -->
	<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>쇼핑</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("I")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	
	<!--  여기까지  -->	
			
			
			</li>
			</div>
			</div>
	</ul> <!-- 음식·숙박·쇼핑< -->

 	<ul><span>여행 이야기</span>
			<div class="submenu_box">
			<div class="submenu_wrap">
			<li>
			
	<!-- 여기부터 -->
	<li>
	<ul class="submenu"><span>교통</span>
	<%for(int i=0;i<CDcodeList.size();i++)
	{
	
	tour_CDcodeVO CDVo = CDcodeList.get(i);
	
	if(CDVo.getCcode().equals("J")){ %>
		<a href="GetTour_viewCtrl?pno=<%=CDVo.getDcode() %>#<%=CDVo.getDcode() %>"><li><%=CDVo.getDcode_res() %></li></a>
		
		<%
	}
	%>

	<%} %>
	</ul>
	
	<!--  여기까지  -->
			
			</li>
			</div>
			</div>
	</ul> <!-- 여행 이야기 -->
	<ul class="nonhover"><span><a href="GetTour_commentListCtrl2">이용후기</a></span>
			<div class="submenu_box">
			<div class="submenu_wrap">
			<li>
			
			
			
			</li>
			</div>
			</div>
	</ul> <!-- 이용후기 -->
	
 	<ul class="nonhover"><span><a href="GetNoticelistCtrl2">공지사항</a></span>
			<div class="submenu_box">
			<div class="submenu_wrap">
			<li>
			
			
			
			</li>
			</div>
			</div>
	</ul><!-- 공지사항 -->
	
	
	
	<style>
	
	.hb_wrap ul.nonhover:hover .submenu_wrap{
	display: none;
	}
	.ttt li{
	font-size: 20px;
	line-height: 2em;
	} 
	</style>
	<ul class="ttt" style="float: right;"><a href="index.jsp"><img alt="메뉴" src="./img/index/icon_sitemap_on.png"></a>
	<div class="submenu_box">
	<div class="submenu_wrap" style="float: right;position: relative;right: 100px; width: auto;">
	
	
	<% if (sid.equals("admin")){ %>
	                <li><a href="/web02/GetCustomerListCtrl">회원목록</a></li>
                    <li><a href="/web02/GetTour_viewListCtrl">투어뷰목록</a></li>
                    <li><a href="/web02/GetTour_boardListCtrl">투어보드목록</a></li>
                    <li><a href="/web02/GetTour_commentListCtrl">투어코맨트목록</a></li>
                    <li><a href="/web02/GetNoticelistCtrl">공지사항관리</a></li>
                    <li><%=sid %>님 (<%=sname %>)</li>
                    <li><a href="/web02/logout.jsp">로그아웃</a></li>
                   <% }else if (sid.equals("non-member")){ %>
                   <li><a href="/web02/login.jsp">로그인</a></li>
     			   <li><a href="/web02/agreement.jsp">회원가입</a></li>
                   
                   <%}else{ %>
                   <li><a href="MypageCtrl">My page</a></li>
     			   <li><%=sid %>님 (<%=sname %>)</li>
     			   <li><a href="/web02/logout.jsp">로그아웃</a></li>
                   <%} %>
		
	

	

	
	</div>
	</div>

	</ul>

	</div>

</div>
</nav>
<script type="text/javascript">

</script>
	