<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBTest</title>
</head>
<body>
<%
	//오라클 드라이버 연결 코드
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	//오라클의 system 데이터베이스 계정 접속
	String user = "system";
	String pass = "12345";
	
	try {
		
		//1. 데이터베이스 open 클래스 접속
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url,user,pass);
		
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
	접속성공 !!
</body>
</html>