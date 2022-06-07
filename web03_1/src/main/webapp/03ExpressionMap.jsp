<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="" isErrorPage="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.net.InetAddress" %>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>맵</title>
</head>
<body>

	<%
	
	String name = "zz";
	String[] color = {"a","b","c"};
	Map map = new HashMap();
	map.put("name0", color[0]);
	map.put("name1", color[1]);
	map.put("name2", color[2]);
	
	request.setAttribute("name", name);
	request.setAttribute("color", color);
	request.setAttribute("map", map);
	request.setAttribute("num", 111);
	pageContext.setAttribute("num2", 123);
	%>
	
	<p>${name }</p>
	<p>${color[0] }</p>
	<p>${map }</p>
	<c:set var="zzz" value=""/>
	<p>${zzz }</p>
	<p>${num+num }</p>
	<p>${num*num }</p>
	<p>${num2+num2 }</p>

</body>
</html>