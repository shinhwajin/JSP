package boardmodel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BoardDeleteProcCon.do")
public class BoardDeleteProcCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num=Integer.parseInt(request.getParameter("num"));
		String password=request.getParameter("password");
		String pass=request.getParameter("pass");
		
		//password와 pass같은지 비교
		if(password.equals(pass)) {
			BoardDAO bdao=new BoardDAO();
			bdao.DeleteBoard(num);
			
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCon.do");
			dis.forward(request, response);
		}else {
			request.setAttribute("msg","1");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCon.do");
			dis.forward(request, response);
			
		}
		
		
		
	}

}
