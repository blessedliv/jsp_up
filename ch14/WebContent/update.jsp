<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String name = request.getParameter("name");
	Class.forName("com.mysql.jdbc.Driver");
	
	int updateCount = 0;
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" + "useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String jspexam = "jspexam";
		String jsppw = "jsppw";
		
		String query = "update `member` set name='"+name+"'" + " where memberid='" +memberId+"'";
		
		conn = DriverManager.getConnection(jdbcDriver, jspexam, jsppw);
		stmt = conn.createStatement();
		updateCount = stmt.executeUpdate(query);
%>

<%}finally{
	if(conn != null) try{conn.close();}catch(SQLException ex){}
	if(stmt != null) try{stmt.close();}catch(SQLException ex){}
} %>


<%if(updateCount > 0){ %>
<%=memberId %>의 이름을 <%=name %>으로 변경
<%}else{ %>
<%=memberId %>가 존재하지 않음
<%} %>

</body>
</html>