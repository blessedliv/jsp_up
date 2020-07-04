<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
콤마와 점을 구분자로 사용: <br>
<c:forTokens var="token" items="red.orange,yellow.green.blue,navy.purple" delims=",.">
	${token }
</c:forTokens>
</body>
</html>