<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트 태그</h3>
	<%
		int i = 3;
		out.println("i=" + i);
		request.setAttribute("j", 3);
		request.setAttribute("k", "5");
	%>
	<hr />
	<h3>스크립트 태그 표현식</h3>
		i=<%=i%><br>
		i=<%=i > 4%><br>
	<!-- 문자데이터로 연산시 문자타입으로 자동변환 -->
		i=<%=3 + "4"%><br>
	<hr />
	<h3>EL 표현식</h3>
	<!--  변수를 바로 받을수 없음 -->
		1. i=${i }<br>
		2. i=${j }<br>
	<!-- 숫자와 문자여도 관계연산 또는 산술연산 가능 -->
		3. i=${k>4 }<br>
		4. i=${k+4 }<br>
	
</body>
</html>