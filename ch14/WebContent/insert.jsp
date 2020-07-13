<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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
	String memberid= request.getParameter("memberid");
	String password= request.getParameter("password");
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String driver = "jdbc:mysql://localhost:3306/chap14?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
		String dbid = "jspexam";
		String dbpw = "jsppw";
		conn = DriverManager.getConnection(driver, dbid, dbpw);
		pstmt = conn.prepareStatement("insert into `member` values(?,?,?,?)");
		pstmt.setString(1, memberid);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		
		pstmt.executeUpdate();
		
}finally{
		if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
		if(conn!=null)try{conn.close();}catch(SQLException e){}
	
} %>

MEMBER 테이블에 새로운 레코드를 삽입하였습니다.
</body>
</html>