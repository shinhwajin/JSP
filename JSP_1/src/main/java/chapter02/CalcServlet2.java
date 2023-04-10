package chapter02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet2")
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Get ��û �޼���
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	// Post ��û �޼���
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���� ����
		int num1, num2;
		int result;
		String op;

		// Ŭ���̾�Ʈ ����� ���޵� ����Ʈ Ÿ�԰� �ѱ����ڵ�
		response.setContentType("text/html; charset=UTF-8");

		// ��� ��ü
		PrintWriter out = response.getWriter();
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");

		Calc calc = new Calc(num1, num2, op);
		result = calc.getResult();

		// ��� ��Ʈ���� ���Ͽ� ������ ����
		out.println("<HTML>");
		out.println("<HEAD><TITLE>����</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>�����</H2>");
		out.println("<HR>");
		out.println(num1 + " " + op + " " + num2 + " = " + result);
		out.println("</BODY></HTML>");

	}

}