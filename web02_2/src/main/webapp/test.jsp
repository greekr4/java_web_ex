<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
String[] a;
String[] address;
String[] tel;
String urlPath = "https://www.haenam.go.kr/tour/index.9is?contentUid=18e3368f655bdbc601663ec8af0b547b&pageIndex=1&cmsSearchType=CMS_GROUP_ID00000123&tCimUniqId=TCIM_000000000000509&searchKeyword=";
String pageContents = "";
StringBuilder contents = new StringBuilder();

try{

    URL url = new URL(urlPath);
    URLConnection con = (URLConnection)url.openConnection();
    InputStreamReader reader = new InputStreamReader (con.getInputStream(), "utf-8");

    BufferedReader buff = new BufferedReader(reader);

    while((pageContents = buff.readLine())!=null){
        //System.out.println(pageContents);             
        contents.append(pageContents);
        contents.append("\r\n");
    }

    buff.close();
	a = contents.toString().split("<div class=\"about\">");
	a = a[1].split("</div>");
	
	address = contents.toString().split("주소</span><span class=\"txt02\">");
	address = address[1].split("</span></dd>");
	
	tel = contents.toString().split("문의</span><span class=\"txt02\">");
	tel = tel[1].split("<a href=");

	
    System.out.println("\n내용\n");
    System.out.println(a[0]);
    out.println("내용<br>"+a[0]+"<br><br>");
    System.out.println("\n내용끝\n");
    
    System.out.println("\n주소\n");
    System.out.println(address[0]);
    System.out.println("\n주소끝\n");
    out.println("주소<br>"+address[0]+"<br><br>");
    
    System.out.println("\n문의\n");
    System.out.println(tel[0]);
    System.out.println("\n문의끝\n");
    out.println("문의<br>"+tel[0]+"<br><br>");
    
    
}catch(Exception e){
    e.printStackTrace();
}



%>
</body>
</html>