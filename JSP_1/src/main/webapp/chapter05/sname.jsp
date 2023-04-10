<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="chapter05.AddrBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<!-- AddrService의 객체 생성(as) -->
<jsp:useBean id="as" class="chapter05.AddrService" scope="session"></jsp:useBean>
<%
AddrBean ab = as.getAddr(request.getParameter("sname"));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sname</title>
</head>
<body>
	<div align="center">
		<H2>등록내용</H2>
		이름 : <%=ab.getUsername() %><br>
		전화번호 : <%=ab.getTel() %><br>
		이메일 : <%=ab.getEmail() %><br>
		성별 : <%=ab.getGender() %>
		<hr />
		<a href="addr_list.jsp">전체 목록 보기</a>
	</div>
</body>
</html>