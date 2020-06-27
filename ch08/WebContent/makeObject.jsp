<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<jsp:useBean id="member" scope="request" class="ch08.member.MemberInfo" />
<%
member.setId("madvirus");
member.setName("David");
%>
<jsp:forward page="/useObject.jsp" />