<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sessionLoginProc</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");

//사용자로부터 넘어온 아이디 가져오기
String id = request.getParameter("id");
//브라우저가 바뀌지 않는 한 어느 페이지에서도 데이터를 공유할 수 있도록 세션 객체 생성
session.setAttribute("id", id);
//세션 유지 시간(5초 설정)
session.setMaxInactiveInterval(5);
%>

<h2>당신의 아이디는 <%=id %> 입니다.</h2>

<a href="sessionShoppingMall.jsp">쇼핑몰 바로가기</a>

</body>
</html>