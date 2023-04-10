<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="chapter05.AddrBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<!-- AddrService의 객체 생성(as) -->
<jsp:useBean id="as" class="chapter05.AddrService" scope="session"></jsp:useBean>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>주소록</h2>
		<hr />
		<a href="addr_form.jsp">주소 추가</a>
		<form action="sname.jsp" method="post">
			검색 : <input type="text" name="sname" />
				  <input type="submit" value="검색" />
		</form>
		<p></p>
		<table border="1" width="500">
			<tr> <td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td> </tr>
			<% for(AddrBean ab : as.getAddrList()) { %>
			<tr>
				<td><%=ab.getUsername() %></td>
				<td><%=ab.getTel() %></td>
				<td><%=ab.getEmail() %></td>
				<td><%=ab.getGender() %></td>
			</tr>
			<%
			}
			%>
		</table>
	</center>
</body>
</html>