<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberDelete</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	%>
	<center>
		<h1>회원 정보 수정하기</h1>
		<form action="MemberDeleteProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="50">
					<td align="center" width="150">아이디</td>
					<td width="250"><%=id%></td>
				</tr>
				<tr height="40">
					<td align="center" width="150">패스워드</td>
					<td width="250"><input type="password" name="pass1"></td>
				</tr>
				<tr height="40">
					<td align="center" colspan="2"><input type="hidden" name="id" value="<%=id%>">
						<input type="submit" value="삭제하기">
						<input type="button" value="전체회원보기" onclick="location.href='memberList.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>