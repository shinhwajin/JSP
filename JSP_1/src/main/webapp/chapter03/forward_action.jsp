<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forward</title>
</head>
<body>
	<h2>forward_action에서 footer호출</h2>
	<hr />
	forward_action.jsp의 모든 내용은 출력되지 않습니다
	
	<%!
		int a = 10;
	%>

	<jsp:forward page="footer.jsp">
		<jsp:param name="email" value="test@soldesk.com" />
		<jsp:param name="tel" value="000-0000-0000" />
	</jsp:forward><br>
	
	<%=a %>
	<h2>시험 잘 보세요~</h2>
</body>
</html>