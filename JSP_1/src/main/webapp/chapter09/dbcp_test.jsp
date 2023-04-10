<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
%>

<%
	//데이터베이스 연결 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		//JNDI(Java Naming Directory Interface) 이름으로 DataSource 객체를 참조함
		//JNDI 접근은 java:/comp/env 로 Context 객체에 접근이 가능
		// web.xml에 등록한 jdbc.orcl로 DataSource 객체 참조
		DataSource ds = (DataSource) envContext.lookup("jdbc/xe");
	
		conn = ds.getConnection();
	
		//username 값을 입력한 경우 sql수행
		if (request.getParameter("username") != null) {
	
			//java의 String을 sql문으로 준비(Statement)
			//insert into jdbc_test values ('smile', 'smile@soldesk.com');
			String sql = "insert into jdbc_test values (?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("username"));
			pstmt.setString(2, request.getParameter("email"));
			pstmt.executeUpdate();
		}
	
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBCP Insert</title>
</head>
<body>
	<div align="center">
		<h2>이벤트 등록</h2>
		<hr />
		<form action="dbcp_test.jsp" method="post">
			등록이름 : <input type="text" name="username" />
			이메일 : <input type="text" name="email" size="20" />
			&nbsp;&nbsp;<input type="submit" value="등록" />
		</form>
		<hr />
		<p />
	</div>

	# 등록 목록
	<p />
	<%
		try {
	
			String sql = "select USERNAME , EMAIL from jdbc_test";
			pstmt = conn.prepareStatement(sql);
	
			ResultSet rs = pstmt.executeQuery();
	
			int i = 1;
			while (rs.next()) {
				out.println(i + "번째 : " + rs.getString(1) + " , " + rs.getString("email") + "<br>");
				i++;
			}
	
			//사용한 자원 반납
			rs.close();
			pstmt.close();
			conn.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>