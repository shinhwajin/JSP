<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDeleteProc</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<!-- 현재 웹페이지에서 입력한 정보를 MemberDBBean에 넣기 -->
	<jsp:useBean id="mbean" class="model.MemberDBBean">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>
	
	<%
		MemberDAO mdao = new MemberDAO();
		/*오라클에 있는 패스워드 가져오는 메소드 호출 */
		String pass = mdao.getPass(mbean.getId());  // 빈에 원래 있던 패스워드
		
		if(mbean.getPass1().equals(pass)) {
			mdao.deleteMember(mbean.getId());
			//확인
			response.sendRedirect("memberList.jsp");
		} else {
	%>
		<script type="text/javascript">
			alert("패스워드가 일치하지 않습니다.")
			history.go(-1)
		</script>
	<% 
		}
	%>
</body>
</html>