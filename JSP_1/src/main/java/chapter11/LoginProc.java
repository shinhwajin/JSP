package chapter11;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chapter11/LoginProc.do")
public class LoginProc extends HttpServlet {
	//직렬화(바이너리 코드로 변환) 또는 역직렬화(문자열 코드로 변환) 하기 위한 버전
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	public void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println("id = " + id);
		String pass = request.getParameter("password");
		
		request.setAttribute("id", id);  //request 객체로 데이터 저장
		request.setAttribute("pass", pass);
		
		//데이터의 요청정보를 jsp로 넘겨줌
		RequestDispatcher dis = request.getRequestDispatcher("LoginProc.jsp");
		//클라이언트가 요청하면서 전송한 데이터(id, password)를 그대로 유지하면서 넘어감
		dis.forward(request, response);
		//새로운 페이지로 완전히 이동하면서 기존 데이터를 사용할 수 없음
		//Redirect방식 -> dis.sendRedirect()
	}

}
