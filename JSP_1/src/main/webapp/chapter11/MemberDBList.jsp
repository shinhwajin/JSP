<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member List</title>
</head>
<body>
	<center>
		<h2>전체 회원 목록</h2>
		<table width="600" border="1">
			<tr height="40">
				<td width="120" align="center">아이디</td>
				<td width="120" align="center">이메일</td>
				<td width="120" align="center">전화번호</td>
				<td width="120" align="center">취미</td>
				<td width="120" align="center">직업</td>
			</tr>
			
			<c:forEach var="bean" items="${vec }">  <!-- MemberListCon에서 "vec"이라는 이름으로 v를 setAttribute 해줬음 -->
			
				<tr height="40">
					<td width="120" align="center">
						<a href="memberInfo.jsp?id=${bean.id }"> ${bean.id } </a>
					</td>
					<td width="120" align="center">${bean.email }</td>
					<td width="120" align="center">${bean.phone }</td>
					<td width="120" align="center">${bean.hobby }</td>
					<td width="120" align="center">${bean.job }</td>
				</tr>
			
			</c:forEach>

		</table>
	</center>
</body>
</html>