<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insert.jsp" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="memberid" size="10"/></td>
			<td>password</td>
			<td><input type="password" name="password" size="10"/></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" size="10"/></td>
			<td>Email</td>
			<td><input type="text" name="email" size="10"/></td>
		</tr>
		<tr>
			<td colspan="4"><input type="submit" value="submit" /></td>
		</tr>
	</table>
</form>
</body>
</html>