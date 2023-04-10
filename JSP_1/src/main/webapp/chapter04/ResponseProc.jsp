<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResponseProc</title>
</head>
<body>
	<%
	//고정으로 id, password 값 선언
	String dbid = "smile";
	String dbpass = "system";

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	//id와 password가 일치하는지 비교조건문
	if (id.equals(dbid) && pass.equals(dbpass)) {
		//id와 password가 데이터베이스와 일치할 경우 페이지로 제어권을 떠넘김
		//세션영역 저장하고 떠넘김
		session.setAttribute("id", id);
		response.sendRedirect("ResponseLogin.jsp");
//		response.sendRedirect("ResponseLogin.jsp?id="+id);   :  get방식에서 넘김
	} else {
	%>
	<script type="text/javascript">
		alert('로그인 실패');
		history.go(-1);//이전 페이지로 이동이 됨
	</script>
	<%
	}
	%>
	
</body>
</html>