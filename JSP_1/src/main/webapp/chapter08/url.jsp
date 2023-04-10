<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>url</title>
</head>
<body bgcolor="#ffffcc">
	<h3>&lt; c:url &gt;</h3>
	<c:url value="/chapter08/choose.jsp" var="target">
		<c:param name="sel">a</c:param> <!-- param.sel == a -->
	</c:url>
	<hr />
	
	<%--
	String url = "~";
	URL 코드로 변경
	--%>
	
	단순 출력 : ${target }<br>
	링크 연동 : <a href="${target }">choose.jsp-a</a>
</body>
</html>