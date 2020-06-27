<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String code = request.getParameter("code");
	String viewPageUrl = null;

	
	if(code.equals("A")) viewPageUrl = "/viewModule/a.jsp";
	else if (code.equals("B")) viewPageUrl = "/viewModule/b.jsp";
	else viewPageUrl ="/viewModule/c.jsp";
%>

<jsp:forward page="<%=viewPageUrl %>" />
</body>
</html>