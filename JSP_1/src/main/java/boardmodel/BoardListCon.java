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
		//한 화면에 보여지는 게시글 10개씩
		int pageSize = 10;
		//현재 보여지는 페이지 번호 [1][2][3]
		String pageNum = request.getParameter("pageNum");
		//pageNum의 null 예외처리
		if(pageNum == null) {
			pageNum = "1"; //최신글을 가져옴 [1]
		}
		
		//총 게시글의 개수를 지정
		int count = 0;
		//화면에 보여지는 글번호 숫자의 위치 지정
		int number = 0;
		//페이지번호 형변환
		int currentPage = Integer.parseInt(pageNum);
		
		//DAO객체
		BoardDAO bdao = new BoardDAO();
		//총 게시글의 개수를 반환해주는 메소드
		count = bdao.getallCount();
		//-----------------------------------------------------
		//현재 보여지는 페이지의 시작번호
		//첫번째 블록 : [1] : (1-1)*10+1
		//두번째 블록 : [11] : (2-1)*10+1
		//세번째 블록 : [21] : (3-1)*10+1
		int startRow=(currentPage-1)*pageSize+1;
		//끝번호 1*10 / 2*10 / 3*10
		int endRow=currentPage*pageSize;
		//최신글 10개 기준으로 게시글 리턴하는 메소드 호출
		Vector<BoardDTO> v = bdao.getAllBoard(startRow,endRow);
		//-----------------------------------------------------
		//게시글이 9개일 때 => 9-(1-1)*10 = 9
		//게시글이 9개일 때 => 11-(2-1)*10 = 1
		//게시글이 23개일 때 => 23-(3-1)*10 = 3
		number=count-(currentPage-1)*pageSize;
		
		//수정 or 삭제 시 비밀번호 일치 여부를 메시지로 처리
		String msg = (String)request.getAttribute("msg");
		
		//jsp페이지로 이동 전에 데이터 저장
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
