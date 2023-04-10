<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Out</title>
</head>
<body bgcolor="#ffffff">
	<center>
		<h3>&lt;c:out&gt;</h3>
		<table border="1" cellpadding="5" cellspacing="1" align="center">
			<c:forEach var="member" items="${members}">
				<tr>
					<td>${member.name}</td>
					<td>
						<!-- escapeXml="false" : 값이 null일 경우 html에 정의된 값이 그대로 출력됨 -->
						<c:out value="${member.email}" escapeXml="false">
							<font color="red">email없음</font>
						</c:out>
					</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>