<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=request.getContextPath()%>/view.jsp" >
		보고 싶은 페이지 선택 :
		<select name="code">
			<option value="A">A</option>
			<option value="B">B</option>
			<option value="C">C</option>
		</select>
		
		<input type="submit" value="이동" />
	</form>

</body>
</html>