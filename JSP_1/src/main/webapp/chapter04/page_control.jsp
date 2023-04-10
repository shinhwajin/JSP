<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Control</title>
</head>
<body>
	<h2>forward, sendRedirect</h2>
	<hr />
	<form action="forward_action.jsp" method="post">
		forward action : <input type="text" name=username />&nbsp;&nbsp;
		<input type="submit" value="Request" />
	</form>
</body>
</html>