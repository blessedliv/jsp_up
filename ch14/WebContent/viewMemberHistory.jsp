<%@page import="java.io.Reader"%>
<%@page import="java.io.IOException"%>
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
	String memberId = request.getParameter("memberId");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{
	String driverM = "jdbc:mysql://localhost:3306/chap14?"+"useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
	String dbid = "jspexam";
	String dbpw = "jsppw";
	String query = "select * from `member_history` where memberid='"+memberId +"'";
	conn = DriverManager.getConnection(driverM, dbid, dbpw);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	
	if(rs.next()){
%>
<table border="1">
	<tr>
		<td>아이디</td><td><%=memberId %></td>
	</tr>
	<tr>	
		<td>히스토리</td>
		<td>
		<%
			String history = null;
			Reader reader = null;
			try{
				reader = rs.getCharacterStream("history");
				if(reader != null){
					StringBuilder buff = new StringBuilder();
					char[] ch = new char[512];
					int len = -1;
					
					while((len=reader.read(ch)) != -1){
						buff.append(ch, 0 ,len);
					}
					
					history = buff.toString();
				}
			}catch(IOException e){
				out.println("입셉션 발생 : " + e.getMessage());
			}finally{
				if(reader !=null)try{reader.close();}catch(Exception e){}
			}
		%>
		<%=history %>
		</td>
	</tr>
</table>
<%
	}else{
%>
<%=memberId %> 회원의 히스토리가 없습니다.

<%		
		
	}
	}catch(SQLException e){ %>
에러발생 : <%=e.getMessage() %>
<%}finally{
	if(conn !=null)try{conn.close();}catch(Exception e){}
	if(stmt !=null)try{stmt.close();}catch(Exception e){}
	if(rs !=null)try{rs.close();}catch(Exception e){}
} %>
</body>
</html>