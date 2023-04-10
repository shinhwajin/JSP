<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application</title>
</head>
<body>
	<div align="center">
		<h2>application</h2>
		<hr />
		1. 서버정보 : <%=application.getServerInfo() %><br>
		2. 서블릿 : <%= application.getMajorVersion()+"."+application.getMinorVersion() %><br>
		3. application.jsp 파일의 실제 경로 : <%=application.getRealPath("application.jsp") %>
		<hr />
		setAttribute로 username 변수에 "박시은" 설정<p>
		<%
			application.setAttribute("username", "박시은");
			application.log("username=박시은");
			application.setAttribute("count", 0);
		%>
		
		<a href="application_result.jsp">확인하기</a>
	</div>
</body>
</html>