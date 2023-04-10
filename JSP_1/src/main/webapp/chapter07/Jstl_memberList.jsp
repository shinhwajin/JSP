<%@page import="model.MemberDBBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Inheritance For -->
	<!-- for(Product bean : productlist){}
	<c:forEach var="bean" items="${productlist }">

	</c:forEach> -->
	<center>
		<h2>전체 회원 보기</h2>
		<%
		MemberDAO mdao = new MemberDAO();
		Vector<MemberDBBean> vec = mdao.allSelectMember();
		//EL 자체가 일반변수는 받을 수 없음 -> request영역에 저장하고 사용
		request.setAttribute("vec", vec);
		%>
		<table width="600" border="1">
			<tr height="40">
				<td width="120" align="center">아이디</td>
				<td width="120" align="center">이메일</td>
				<td width="120" align="center">전화번호</td>
				<td width="120" align="center">취미</td>
				<td width="120" align="center">직업</td>
			</tr>
			<%--
			for(int i=0;i<vec.size();i++) {
				MemberDBBean bean = vec.get(i);
			} --%>
			<c:forEach var="bean" items="${vec}">
				<tr height="40">
					<td width="120" align="center">
						<a href="memberInfo.jsp?id=${bean.id }"> ${bean.id } </a>
					</td>
					<td width="120" align="center"> ${bean.email } </td>
					<td width="120" align="center"> ${bean.phone } </td>
					<td width="120" align="center"> ${bean.hobby } </td>
					<td width="120" align="center"> ${bean.job } </td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>