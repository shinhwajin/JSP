<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CookieLoginProc</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String save = request.getParameter("save");
	String id = request.getParameter("id");
	
	if(save != null) {
		Cookie cookie = new Cookie("id", id);  //쿠키는 생성자를 통하여 저장함
		cookie.setMaxAge(60*24); //하루
		response.addCookie(cookie);  //서버로 쿠키 로딩
	}

	out.write("쿠키 생성 완료");
	%>
	
	<%=id %>님 반갑습니다.
</body>
</html>