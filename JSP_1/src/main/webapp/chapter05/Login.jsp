<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- userBean 선언(login) -->
<jsp:useBean id="login" class="chapter05.LoginBean" scope="page"/>

<!-- login객체를 이용해서 모든 속성을 저장 -->
<jsp:setProperty name="login" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<div align=center>
		<H2>로그인 예제</H2>
		<HR>
		<%
			// 로그인 객체를 이용하여 로그인 여부 판단
			if (!login.checkUser())
				out.println("로그인 실패!");
			else
				out.println("로그인 성공!");
		%>
		<hr />
		<!-- 회원정보 출력 -->
		userID : <jsp:getProperty property="userid" name="login"/><br>
		userPass : <jsp:getProperty property="passwd" name="login"/>
	</div>
</body>
</html>