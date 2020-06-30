<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)){
		session.setAttribute("MEMBERID", id);		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인에 성공했습니다.
<%}else{ %>
<script type="text/javascript">
	alert("로그인에 실패 했습니다.");
	history.go(-1);
</script>
<%} %>
</body>
</html>