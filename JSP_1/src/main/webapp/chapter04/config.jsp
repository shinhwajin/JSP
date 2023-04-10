<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Config</title>
</head>
<body>
	<div align="center">
		<h2>Config Test</h2>
		<hr />
		<%=config.getInitParameter("workspace") %><br>
		<%=config.getInitParameterNames() %>
	</div>
</body>
</html>

	<!-- web.xml에 파라미터값으로 설정 -->