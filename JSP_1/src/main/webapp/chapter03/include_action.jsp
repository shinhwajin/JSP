<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include Action</title>
</head>
<body>
	<h2>include Action</h2>
	<hr />
	include_action 에서 출력하는 메세지입니다.<br>
	
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="test@soldesk.com"/>
		<jsp:param name="tel" value="000-0000-0000"/>
	</jsp:include><br>
	
	<h2>include_action.jsp 가 종료됩니다.</h2>
</body>
</html>