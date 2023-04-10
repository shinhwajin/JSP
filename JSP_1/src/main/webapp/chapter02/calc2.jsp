<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기</title>
</head>
<body>
	<h3>계산기</h3>
	<hr />
	<form action="/JSP_1/CalcServlet2" method="post" name="form1">
		<input type="text" name="num1" width="200" size="5">
		<select name="operator">
			<option>+</option>
			<option selected>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="num2" width="200" size="5">
		<input type="submit" value="계산" name="b1"><input type="reset" value="다시입력" name="b2">
	</form>
</body>
</html>