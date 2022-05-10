<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        * {margin: 0; padding: 0;}
        a {text-decoration: none; color: black;}
        ul { list-style: none;}
        .wrap{clear: both; width: 100%;}
        .hd_top{width: 100%; height: 35px; background-color: #046fd9;}
        .hd_wrap_top{
            width: 1300px;
            height: 35px;
            margin: 0 auto;
            display: block;
            line-height: 35px;
            color: #EEE;
        }
        .hd_wrap_top ul{
            float: left;
        }
        .hd_wrap_top .dd li{float: left; margin: 0 20px;}
        .hd_wrap_top .dd2{
            float: right;
        }
        .hd_wrap_top .dd2 li{
            float: left; margin: 0 20px;
        }
        .hd_wrap_top .LANGUAGES li{display: none;}
        .hd_wrap_top .LANGUAGES {margin: 0 20px;}

    </style>
</head>
<body>
<div class="container">
<header id="hd">
<%@ include file="hd.jsp" %>
</header>

<footer id="ft">
<%@ include file="ft.jsp" %>
</footer>

</div>
</body>
</html>