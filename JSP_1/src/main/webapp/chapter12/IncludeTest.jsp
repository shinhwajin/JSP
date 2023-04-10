<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session Main</title>
</head>
<body>
<%
 String campurl = request.getParameter("camping");

 //null 처리
 if(campurl == null) {
	 campurl="Center.jsp";
} else {
	if(campurl.equals("1"))
		campurl="Choan_camping.jsp";
	else if(campurl.equals("2"))
		campurl="CampingInTheCity.jsp";
	else if(campurl.equals("3"))
		campurl="Choan_camping.jsp";
	else if(campurl.equals("4"))
		campurl="CampingInTheCity.jsp";
	else if(campurl.equals("5"))
		campurl="Choan_camping.jsp";
	else if(campurl.equals("6"))
		campurl="CampingInTheCity.jsp";
	else if(campurl.equals("11"))
		campurl="SessionLoginForm.jsp";
}
%>
	<center>
		<table width="1200" border="1">
			<!-- Top 부분 -->
			<tr height="100">
				<td align="center" colspan="2"> <jsp:include page="Top.jsp"/> </td>
			</tr>
			<!-- Left 부분 -->
			<tr height="500">
				<td align="center" width="250"> <jsp:include page="Left.jsp"/> </td>
			<!-- Center 부분 -->
				<td align="center" width="900"> <jsp:include page="<%=campurl %>"/> </td>
			</tr>
			<!-- Bottom 부분 -->
			<tr height="100">
				<td align="center" colspan="2"> <jsp:include page="Bottom.jsp"/> </td>
			</tr>
		</table>
	</center>
</body>
</html>