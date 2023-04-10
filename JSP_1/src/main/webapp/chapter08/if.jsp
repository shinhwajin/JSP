<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>if</title>
</head>
<body bgcolor="#ffffcc">
	<h3>&lt; c:if &gt;</h3>
	<c:set var="msg" value="adminuser"/>
	msg : ${msg }<br>
	<c:if test="${msg == 'adminuser' }" var="result">
		test result = ${result }<br>
	</c:if>
</body>
</html>

		<!-- 
		test : 조건
		var : 결과값 저장 -->