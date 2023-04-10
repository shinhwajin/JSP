<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Diamond</title>
</head>
<body>
	<center>
		<table>
			<c:forEach var="i" begin="1" end="5">
				<tr height="40">
					<!-- 공백for -->
					<c:forEach var="j" begin="1" end="${5-i }">
						<td>&nbsp;</td>
					</c:forEach>
					<!-- *for -->
					<c:forEach var="m" begin="1" end="${(i*2)-1 }">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
			<c:forEach var="i" begin="1" end="4">
				<tr height="40">
					<!-- 공백for -->
					<c:forEach var="j" begin="1" end="${i }">
						<td>&nbsp;</td>
					</c:forEach>
					<!-- *for -->
					<c:forEach var="m" begin="1" end="${9-(i*2) }">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
			<hr />
			<!-- Inheritance For -->
			<!-- for(Product bean : productlist){} 
			<c:forEach var="bean" items="${productlist }">
			
			</c:forEach>-->
		</table>
	</center>
</body>
</html>