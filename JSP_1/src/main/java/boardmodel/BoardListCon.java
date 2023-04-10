package boardmodel;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardListCon.do")
public class BoardListCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�� ȭ�鿡 �������� �Խñ� 10����
		int pageSize = 10;
		//���� �������� ������ ��ȣ [1][2][3]
		String pageNum = request.getParameter("pageNum");
		//pageNum�� null ����ó��
		if(pageNum == null) {
			pageNum = "1"; //�ֽű��� ������ [1]
		}
		
		//�� �Խñ��� ������ ����
		int count = 0;
		//ȭ�鿡 �������� �۹�ȣ ������ ��ġ ����
		int number = 0;
		//��������ȣ ����ȯ
		int currentPage = Integer.parseInt(pageNum);
		
		//DAO��ü
		BoardDAO bdao = new BoardDAO();
		//�� �Խñ��� ������ ��ȯ���ִ� �޼ҵ�
		count = bdao.getallCount();
		//-----------------------------------------------------
		//���� �������� �������� ���۹�ȣ
		//ù��° ��� : [1] : (1-1)*10+1
		//�ι�° ��� : [11] : (2-1)*10+1
		//����° ��� : [21] : (3-1)*10+1
		int startRow=(currentPage-1)*pageSize+1;
		//����ȣ 1*10 / 2*10 / 3*10
		int endRow=currentPage*pageSize;
		//�ֽű� 10�� �������� �Խñ� �����ϴ� �޼ҵ� ȣ��
		Vector<BoardDTO> v = bdao.getAllBoard(startRow,endRow);
		//-----------------------------------------------------
		//�Խñ��� 9���� �� => 9-(1-1)*10 = 9
		//�Խñ��� 9���� �� => 11-(2-1)*10 = 1
		//�Խñ��� 23���� �� => 23-(3-1)*10 = 3
		number=count-(currentPage-1)*pageSize;
		
		//���� or ���� �� ��й�ȣ ��ġ ���θ� �޽����� ó��
		String msg = (String)request.getAttribute("msg");
		
		//jsp�������� �̵� ���� ������ ����
		request.setAttribute("number", number);
		request.setAttribute("count", count);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("msg", msg);
		request.setAttribute("v", v);
		
		RequestDispatcher dis = request.getRequestDispatcher("BoardList.jsp");
		dis.forward(request, response);
		
	}
}
