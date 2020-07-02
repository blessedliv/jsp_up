<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("price", 12345);  //EL 에서 사용하기 위해 setting 하는 것이다.
%>

오늘은 <b>${elfunc:formatNumber(price,"#,##0") }</b> 입니다.
</body>
</html>