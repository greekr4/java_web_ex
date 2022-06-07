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
<title>디렉티브</title>
</head>
<body>

	<%Enumeration e = request.getHeaderNames();
	while(e.hasMoreElements()){
		String names = (String) e.nextElement();
		String values = request.getHeader(names);
		out.println("<h4>"+names +" : "+ values + "</h4>");
	}
		out.println("<h4>ip주소 : " + request.getLocalAddr()+"</h4>");
		out.println("<h4>ip주소2 : " + InetAddress.getLocalHost()+"</h4>");
	
	%>
	
</body>
</html>