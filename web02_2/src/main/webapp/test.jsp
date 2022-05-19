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
    System.out.println("\n\n\n\n여기부터");
    System.out.println(a[0]);
    System.out.println("\n\n\n\n여기까지");
}catch(Exception e){
    e.printStackTrace();
}



%>
</body>
</html>