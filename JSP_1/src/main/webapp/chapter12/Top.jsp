<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
</head>
<body>
  <%
  	String logout = request.getParameter("logout");
  
    //로그아웃 상태라면
    if(logout != null) {
    	session.setAttribute("id", null);  //id 소멸
    	session.setMaxInactiveInterval(0);  //session kill
    }
    
    //세션을 통해 id를 읽어옴
    String id = (String)session.getAttribute("id");
    
    if(id == null) {
    	id = "Guest"; 
    }
  %>
	<center>
		<table width="1200">
			<tr height="100">
				<!-- 로고 이미지 -->
				<td align="center" colspan="2" width="220">
					<a href="IncludeTest.jsp"><img src="img/logo.jpg" width="200" height="70"/></a>
				</td>
				<td align="center" colspan="4"> <font size="10" color="orange"> My Own Spring Camp </font> </td>
			</tr>
			<tr height="50">
				<td width="130" align="center"> <a href="IncludeTest.jsp?camping=1" style="text-decoration: none"> Tent </a> </td>
				<td width="130" align="center"> <a href="IncludeTest.jsp?camping=2" style="text-decoration: none"> Chair </a> </td>
				<td width="130" align="center"> <a href="IncludeTest.jsp?camping=3" style="text-decoration: none"> Sleeping Bag </a> </td>
				<td width="130" align="center"> <a href="IncludeTest.jsp?camping=4" style="text-decoration: none"> Dishes </a> </td>
				<td width="130" align="center"> <a href="IncludeTest.jsp?camping=5" style="text-decoration: none"> Lantern </a> </td>
				<td width="130" align="center"> <a href="IncludeTest.jsp?camping=6" style="text-decoration: none"> Table </a> </td>
				<td width="170" align="center">
				  <%
					if (id.equals("Guest")) {
				  %>
				 	<%=id%>님
					<button onclick="location.href='IncludeTest.jsp?camping=11'">로그인</button>
				  <% } else { %>
				  	<%=id%>님 <button onclick="location.href='IncludeTest.jsp?logout=logout'">로그아웃</button>
				  <% } %>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>