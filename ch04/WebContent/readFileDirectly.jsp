<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

char[] buffer = new char[128];
int len = -1;

String filePath = "D:\\workspace\\jsp_\\ch04\\message\\notice.txt";
try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath), "utf-8")){
	while((len=fr.read(buffer)) != -1){
		out.println(new String(buffer, 0 , len));
	}
}catch(IOException e){
	out.println("예외사항 발생" + e.getMessage());
}
%>
</body>
</html>