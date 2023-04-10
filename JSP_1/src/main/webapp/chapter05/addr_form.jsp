<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>address</title>
</head>
<body>
	<div align="center">
		<H2>주소록 등록</H2>
		<HR>
		<form action="addr_add.jsp" method="post">
			<table border=1 cellspacing="1" cellpadding="5">
				<tr>
					<td>이 름</td>
					<td><input type=text size=20 name=username placeholder="이름"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type=text size=20 name=tel placeholder="전화번호"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type=text size=20 name=email placeholder="이메일"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><select name="gender">
							<option selected>남</option>
							<option>여</option>
							<option>기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan=2 align=center>
						<input type=submit value="확인">
						<input type=reset value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>