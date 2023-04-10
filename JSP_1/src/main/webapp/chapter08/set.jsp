<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Set</title>
</head>
<body>
	<center>
		<h3>&lt;c:set&gt;</h3>
		<c:set var="msg" value="Hello World"/>
		msg : ${msg }<br> <!-- 일반 호출 -->
		msg : <%=pageContext.getAttribute("msg") %><br> <!-- 서버 영역에서 호출. 즉, set은 서버에 저장됨 -->
			
		<!-- 리스너의 값을 변수방에 저장하여 사용 -->
		<c:set target="${member }" property="email" value="changed@test.net"/>
		Member name : ${member.name }<br>
		Member email : ${member.email }<br>
	</center>
</body>
</html>