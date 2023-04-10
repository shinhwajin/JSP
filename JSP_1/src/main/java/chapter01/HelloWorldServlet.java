package chapter01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ���� ���� �ֳ����̼� ����
@WebServlet(description = "ó�� ����� ���� ", urlPatterns = {"/HelloWorldServlet"})
public class HelloWorldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//  ������ Ÿ�� ����
		// �ѱ� ����
		response.setContentType("text/html; charset=UTF-8");
		// �������� ����� ���� PrintWriter ��ü Ȯ��
		PrintWriter out = response.getWriter();
		// HTML �������� ������ ��� ������ �ۼ�
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hello World Servlet</TITLE></HEAD>");
		out.println("<BODY><H2>Hello World Servlet : ��ο���</H2></BODY>");
		out.println("</HTML>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
