<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkOut</title>
</head>
<body>
	<%
		//선택된 상품이 없을 경우 또는 예전에 선택한 상품을 바로 결제할 경욱 add.jsp를 거치지 않으므로 장바구니를 생성하지 못한다
		ArrayList<String> list=(ArrayList)session.getAttribute("productlist");
		if(list==null){
			out.println("선택한 상품이 없습니다.");
		} else {
			for(Object productname : list) {
				out.println(productname+"<br>");
			}
		}
	%>
</body>
</html>