<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer</title>
</head>
<body>
	footer.jsp에서 출력하는 메세지입니다.
	<hr />
	<%= request.getParameter("email") %> <br>
	<%= request.getParameter("tel") %> <br>
	<p></p>
	<% out.println(request.getParameter("tel"));%>

</body>
</html>