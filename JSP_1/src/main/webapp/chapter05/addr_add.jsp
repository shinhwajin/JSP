<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="chapter05.AddrBean"></jsp:useBean>
<jsp:setProperty name="addr" property="*" />

<!-- AddrService의 객체 생성(as) -->
<jsp:useBean id="as" class="chapter05.AddrService" scope="session"></jsp:useBean>

<%
as.add(addr);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add</title>
</head>
<body>
	<div align="center">
		<h2>등록내용</h2>
		이름 : <jsp:getProperty property="username" name="addr" /><br>
		전화번호 : <%=addr.getTel()%><br>
		이메일 : <%=addr.getEmail()%><br>
		성별 : <%=addr.getGender()%>
		<hr />
		<a href="addr_list.jsp">목록 보기</a>
	</div>
</body>
</html>