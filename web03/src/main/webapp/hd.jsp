<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
    
 <div class="nav_wrap">
 <nav>
 <ul>
 	<li><a href="${path }/login.jsp">로그인</a></li>
 	<li><a href="${path }/join.jsp">회원가입</a></li>
 </ul> 
 <ul>
 	<li><a href="${path }/GetBoardListCtrl">게시판리스트</a></li>
 	<li>ㅇㅇ</li>
 </ul> 
 
 
 
 </nav>

 </div>