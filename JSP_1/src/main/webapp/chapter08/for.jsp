<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>for</title>
</head>
<body bgcolor="#ffffcc">
	<h3>&lt; c:for &gt;</h3>
	<c:forEach var="i" items="${members }" begin="0" end="5" varStatus="status">
		index : ${status.index } / 
		count : ${status.count }<br>
		name : ${i.name }<br>
		email : ${i.email }<br>
		<hr />
	</c:forEach>

	<%-- delims = "," :  , 를 구분자로 사용함 --%>
	<c:forTokens items="이성미,010-111-2222,서울" delims="," var="sel">
		${sel }<br>
	</c:forTokens>
	<hr />
	<!-- formatting -->
	<fmt:formatNumber value="3.141592" pattern="#.00" />

</body>
</html>