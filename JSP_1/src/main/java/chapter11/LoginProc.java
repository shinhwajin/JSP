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
	//����ȭ(���̳ʸ� �ڵ�� ��ȯ) �Ǵ� ������ȭ(���ڿ� �ڵ�� ��ȯ) �ϱ� ���� ����
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
		
		request.setAttribute("id", id);  //request ��ü�� ������ ����
		request.setAttribute("pass", pass);
		
		//�������� ��û������ jsp�� �Ѱ���
		RequestDispatcher dis = request.getRequestDispatcher("LoginProc.jsp");
		//Ŭ���̾�Ʈ�� ��û�ϸ鼭 ������ ������(id, password)�� �״�� �����ϸ鼭 �Ѿ
		dis.forward(request, response);
		//���ο� �������� ������ �̵��ϸ鼭 ���� �����͸� ����� �� ����
		//Redirect��� -> dis.sendRedirect()
	}

}
