<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies" %>

<%
response.addCookie(Cookies.createCookie("name", "bliss"));
response.addCookie(Cookies.createCookie("id", "bliss", "/ch08", -1));
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Cookies 사용 예
</body>
</html>