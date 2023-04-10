package boardmodel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BoardDeleteCon.do")
public class BoardDeleteCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num=Integer.parseInt(request.getParameter("num"));;
				
		//삭제할 데이터를 가져오는 메서드 호출
		BoardDAO bdao=new BoardDAO();
		BoardDTO bean=bdao.getOneUpdateBoard(num);
		
		//request영역에 저장 
		request.setAttribute("bean", bean);
		
		//BoardDeleteFrom.jsp
		RequestDispatcher dis = request.getRequestDispatcher("BoardDeleteForm.jsp");
		dis.forward(request, response);
		
		
	}

}
