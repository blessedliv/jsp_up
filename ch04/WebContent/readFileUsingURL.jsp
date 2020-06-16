<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<%@ page import="java.net.URL" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String resourcePath = "/message/notice.txt";
char[] buff = new char[128];
int len = -1;
URL url = application.getResource(resourcePath);

try(InputStreamReader br = new InputStreamReader(url.openStream(), "utf-8")){
	while((len=br.read(buff)) != -1) {
		out.print(new String(buff,0,len));
	}
}catch(IOException e){
	e.getMessage();
}
%>
</body>
</html>