<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch11.FormatUtil" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("price", 12345L);
%>

가격은 <b>${FormatUtil.number(price, "#,##0") }</b> 입니다.

</body>
</html>