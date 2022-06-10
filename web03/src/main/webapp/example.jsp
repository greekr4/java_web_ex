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
<hr>
<%!
public class human{
	private String name;
	private int age;
}
%>
<%
human h1 = new human();
ArrayList<human> humanlist = new ArrayList<human>();
h1.name = "사람1";
h1.age = 10;
humanlist.add(h1);
h1.name = "사람2";
h1.age = 20;
humanlist.add(h1);
h1.name = "사람3";
h1.age = 30;
humanlist.add(h1);
%>
<c:forEach items="${humanlist }" var="human">
<c:set var="result" value="${result + i }"/>
</c:forEach>

<hr>

<c:forEach  var="i" begin="1" end="100" step="2">
<c:set var="result" value="${result + i }"/>
</c:forEach>
${result }
<hr>
<c:forTokens items="김/태/균" delims="/" var="zz">
<p>${zz }</p>
</c:forTokens>
<hr>
<c:forTokens items="김/태*균-임,니.다" delims="/*-,." var="zz">
<p>${zz }</p>
</c:forTokens>
<hr>
<c:redirect url="example2.jsp">
 <c:param name="x" value="10"/>
 <c:param name="y" value="20"/>
</c:redirect>
</body>
</html>