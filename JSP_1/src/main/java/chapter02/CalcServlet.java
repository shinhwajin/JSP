package chapter02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Get 요청 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	// Post 요청 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//변수 선언
		int num1, num2;
		int result;
		String op;
		
		// 클라이언트 응답 시 전달될 컨텐트 타입과 한글 인코딩
		response.setContentType("text/html; charset=UTF-8");
		
		// 출력 객체
		PrintWriter out = response.getWriter();
	
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		result=calc(num1,num2,op);
		
		// 출력 스트림을 통하여 웹으로 구현
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+" = "+result);
		out.println("</BODY></HTML>");
	}
	
		public int calc(int num1, int num2, String op) {
					int result=0;
					if (op.equals("+")) {
						result = num1 + num2;
					} else if (op.equals("-")) {
						result = num1 - num2;
					} else if (op.equals("*")) {
						result = num1 * num2;
					} else if (op.equals("/")) {
						result = num1 / num2;
					}
			return result;
		}

}
