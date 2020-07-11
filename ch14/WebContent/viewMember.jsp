<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
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
	String memberId = request.getParameter("memberid");

Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{
	String driver = "jdbc:mysql://localhost:3306/chap14?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
	String dbid = "jspexam";
	String dbpass = "jsppw";
	String query = "SELECT * FROM `member` WHERE memberid='" + memberId + "'";
	
	conn = DriverManager.getConnection(driver, dbid, dbpass);
	stmt = conn.createStatement();
	
	rs = stmt.executeQuery(query);
	if(rs.next()){
	
%>
<table border="1">
	<tr>
		<td>아이디</td><td><%=memberId %></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><%=rs.getString("password") %>
	</tr>
	<tr>
		<td>이름</td><td><%=rs.getString("name") %></td>
	</tr>
	<tr>
		<td>이메일</td><td><%=rs.getString("email") %></td>
	</tr>
</table>
<%
	}else{
%>	
	
<%=memberId %>에 해당하는 정보가 존재 하지 않습니다.

<%
	}
	}catch(SQLException ex){ 
%>
		
에러 발생: <%=ex.getMessage() %>		
		
<%}finally{ 
	if(rs != null)try{rs.close();}catch(SQLException e){}
	if(conn != null)try{rs.close();}catch(SQLException e){}
	if(stmt != null)try{rs.close();}catch(SQLException e){}
	
} %>
</body>
</html>
