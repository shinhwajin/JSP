<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sessionShoppingMall</title>
</head>
<body>
<%
	//세션 영역에 저장된 id 가져오기
	String id = (String)session.getAttribute("id");
%>

<h2><%=id %> 님 환영합니다.</h2>
세션 유지시간 : <%=session.getMaxInactiveInterval() %>
</body>
</html>