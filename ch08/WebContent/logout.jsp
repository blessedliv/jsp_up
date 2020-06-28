<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="util.Cookies" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
%>
로그아웃 하였습니다.
</body>
</html>