<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:set var="num1" value="10" scope="page" />
<c:set var="num2" value="20" scope="application" />
<c:set var="num3" value="${num1 + num2 }" />
<c:out value="${num3 }"></c:out>
<hr>
<jsp:useBean id="a" class="com.shop.common.GoodsVO" />
<jsp:setProperty property="gcode" value="zzz" name="a"/>
${a.gcode }
<hr>
<c:set target="${a }" property="gcode" value="xxx" />
${a.gcode }
<hr>
<c:set var="removetest" value="removetest" />
${removetest } --->>>
<c:remove var="removetest"/> ${removetest }
<hr>
${a.gcode } --->>>
<c:remove var="a"/>
${a.gcode }
<hr>
<c:choose>
<c:when test="${num1 > num2 }">
${num1 } > ${num2 }
</c:when>
<c:when test="${num1 < num2 }">
${num1 } < ${num2 }
</c:when>
<c:when test="${num1 eq num2 }">
${num1 } eq ${num2 }
</c:when>
</c:choose>
<hr>
<%@ page import="java.util.*" %>
<%
String[] name = {"1","2","3","4"};
ArrayList<String> namelist = new ArrayList<String>();
namelist.add("a");
namelist.add("b");
namelist.add("c");
namelist.add("d");
%>
<c:forEach items="<%=name %>" var="for1" varStatus="status">
${for1 }
</c:forEach>
<hr>
<c:forEach items="<%=namelist %>" var="for2" varStatus="status">
${for2 }
</c:forEach>


</body>
</html>