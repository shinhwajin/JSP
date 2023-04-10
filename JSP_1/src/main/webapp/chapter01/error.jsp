<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERROR</title>
</head>
<body>
<!-- 스크립트 릿 -->
<% response.setStatus(200); %>
관리자에게 연결됩니다
<%-- <%= %> : 익스프레션 --%>
<h2>죄송합니다 <%= exception.getMessage() %> 문제로 에러가 발생했습니다.</h2>
</body>
</html>