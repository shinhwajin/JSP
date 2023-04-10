<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL TagLib</title>
</head>
<body>
	<!-- if문 사용하여 조건문 구현 -->
	<!-- if() ()가 test="" -->
	<c:if test="${4>3 }">
		안녕하세요~<br>
	</c:if>
----------------------------------------<p>
	<!-- 변수 선언	-->
	<!-- request.setAttribute("i",4); -->
	<c:set var="i" value="4" />
	
	<c:if test="${i>3 }">
		안녕하세요~<br>
	</c:if>
----------------------------------------<p>
	<!-- 반복문 for -->
	<!-- for(int i=0;i<10;i++) -->
	<c:forEach begin="1" end="10">
		점심시간입니다.<br>
	</c:forEach>
----------------------------------------<p>
	<!-- 1부터 10까지의 합 -->
	<!-- step 인자값을 생략하면 1씩 증가 -->
	<c:forEach var="i" begin="1" end="10">
		<c:set var="sum" value="${sum = sum + i }"/>
	</c:forEach>
	sum : ${sum }<br>
----------------------------------------<p>
	<!-- 1부터 10까지의 합 step 활용-->
	<c:forEach var="i" begin="1" end="10" step="${i=i+2 }">
		<c:set var="sum2" value="${sum2 = sum2 + i }"/>
	</c:forEach>
	sum2 : ${sum2 }<br>
</body>
</html>