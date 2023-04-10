<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%request.setCharacterEncoding("utf-8"); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>productSel</title>
</head>
<body>
	<div align="center">
		<h2>장바구니</h2>
		<hr />
		1. 선택한 상품은 : ${param.sel }<br>
		2. num1 + num2 : ${product.num1+product.num2 }<br>
		
	</div>
</body>
</html>