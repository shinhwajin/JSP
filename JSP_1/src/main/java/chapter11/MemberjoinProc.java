package chapter11;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chapter11/MProc2")
public class MemberjoinProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberBean bean = new MemberBean();
		
		bean.setId(request.getParameter("id"));
		bean.setPass(request.getParameter("pass"));
		bean.setEmail(request.getParameter("email"));
		bean.setPhone(request.getParameter("phone"));
		bean.setAddress(request.getParameter("address"));
		
		request.setAttribute("bean", bean);
		
		RequestDispatcher dis = request.getRequestDispatcher("MemberView.jsp");
		dis.forward(request, response);
		
	}
	
}
