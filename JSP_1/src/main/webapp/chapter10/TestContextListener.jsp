<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listener</title>
</head>
<body>
	<div align="center">
		<h2>Listener</h2>
		<hr />
		<p></p>
		도서명 : ${book.title }<br>
		저자명 : ${book.author }<br>
		가격 : ${book.price }<br>
		출판사 : ${book.publisher }
	</div>
</body>
</html>