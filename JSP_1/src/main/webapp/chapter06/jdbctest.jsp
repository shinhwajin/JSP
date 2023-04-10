<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8"); %>

<%
	//데이터베이스 연결 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;

	//데이터베이스 연결정보를 문자열로 선언
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:xe";  //jar 읽기
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	
	try {
		
		//JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		//계정 정보 로드 : Connection의 인스턴스를 이용
		conn = DriverManager.getConnection(jdbc_url,"system","12345");
		
		//java의 String을 sql문으로 준비(Statement)
		//insert into jdbc_test values ('smile', 'smile@soldesk.com');
		String sql = "insert into jdbc_test values (?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		//username 값을 입력한 경우 sql수행
		if(request.getParameter("username") != null){
			pstmt.executeUpdate();
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	}	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC Insert</title>
</head>
<body>
	<div align="center">
		<h2>이벤트 등록</h2>
		<hr />
		<form action="jdbctest.jsp" method="post">
			등록이름 : <input type="text" name="username"/> 이메일 : <input type="text" name="email" size="20"/>
			&nbsp;&nbsp;<input type="submit" value="등록" />
		</form>
		<hr />
		<p/>
	</div>
	
	# 등록 목록<p/>
	<%
	try {
		
		String sql = "select USERNAME , EMAIL from jdbc_test";
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		int i=1;
		while(rs.next()) {
			out.println(i+"번째 : "+rs.getString(1)+" , "+rs.getString("email")+"<br>");
			i++;
		}
		
		//사용한 자원 반납
		rs.close();
		pstmt.close();
		conn.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	
</body>
</html>