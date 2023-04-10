<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account</title>
</head>
<body>
	<center>
		<h2>LOGIN</h2>
		<form action="LoginProc.do" method="post">
			<table width="300" border="1" cellpadding="5" cellspacing="1">
				<tr height="40"> 
					<td width="120" align="center">아이디</td>
					<td width="180" align="center"> <input type="text" name="id" size="10" /> </td>
				</tr>
				<tr height="40">
					<td width="120" align="center">비밀번호</td>
					<td width="180" align="center"> <input type="password" name="password" size="10" /> </td>
				</tr>
				<tr height="40">
					<td align="center" colspan="2"> <input type="submit" value="LOGIN" /> </td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>