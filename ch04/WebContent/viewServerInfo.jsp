<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
서버정보: <%=application.getServerInfo() %> <br>
메이저버전 : <%=application.getMajorVersion() %><br>
마이너버전 :<%=application.getMinorVersion() %>
</body>
</html>