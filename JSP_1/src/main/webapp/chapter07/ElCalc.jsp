<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Calc</title>
</head>
<body>
	<center>
		<h2>계산기</h2>
		<form action="ElCalc.jsp" method="post">
			<table width="500">
				<tr height="40">
					<td width="80"><input type="text" name="exp1" value="${param.exp1 }"></td>
					<td width="80">
						<select name="exp2">
							<option value="+">+</option>
							<option value="-">-</option>
							<option value="*">*</option>
							<option value="/">/</option>
						</select>
					</td>
					<td width="80"><input type="text" name="exp3" value="${param.exp3 }"></td>
					<td align="center" width="20">=</td>
					<td align="center" width="80">
						<%
						String exp2 = request.getParameter("exp2");
						if(exp2==null)  //null처리
							exp2="+";
						if(exp2.equals("+")) {
						%>
						<input type="text" value="${param.exp1+param.exp3 }" />
						<%
						} else if(exp2.equals("-")) {
						%>
						<input type="text" value="${param.exp1-param.exp3 }" />
						<%
						} else if(exp2.equals("*")) {
						%>
						<input type="text" value="${param.exp1*param.exp3 }" />
						<%
						} else if(exp2.equals("/")) {
						%>
						<input type="text" value="${param.exp1/param.exp3 }" />
						<%
						}
						%>	
					</td>
					<td width="100">
					<input type="submit" value="결과보기"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>