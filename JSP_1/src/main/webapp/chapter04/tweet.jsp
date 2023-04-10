<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//한글깨짐
	request.setCharacterEncoding("UTF-8");
	//username으로 넘어온 값 받아오기
	String msg = request.getParameter("msg");
	//session영역에 값을 저장
	Object username = session.getAttribute("user");
	ArrayList<String> msgs = (ArrayList<String>) application.getAttribute("msgs");
	
	if (msgs == null) {
		//application.setAttribute()를 이용하여 msgs라는 ArrayList 생성
		msgs = new ArrayList<String>();
		//application에 메세지 저장
		application.setAttribute("msgs", msgs);
	}
	
	//===================================================================================
	//날짜
	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("MM/dd (HH:mm)", Locale.KOREA);
	//application에 저장
	msgs.add(username + " : " + msg + " , "+f.format(date));
	//톰캣 콘솔을 통한 로깅
	application.log(msg + " <- 메세지 추가됨");
	//목록 화면으로 리다이렉팅
	response.sendRedirect("twitter_list.jsp");
%>