package boardmodel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public void getCon() {
		// DBCP
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/xe");
			con = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//===========================================================================
	//#1 총 게시글의 개수를 반환해주는 메소드
	public int getallCount() {
		getCon();
		int count = 0;
		try {
			// 쿼리
			String sql = "select count(*) from board";
			pstmt = con.prepareStatement(sql);
			// 쿼리결과 받기
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	//===========================================================================
	//#2 최신글 10개 기준으로 게시글 리턴하는 메소드
	public Vector<BoardDTO> getAllBoard(int startRow, int endRow) {
		Vector<BoardDTO> v = new Vector<BoardDTO>();
		getCon();

		try {
			// Rownum : 오라클에만 존재하는 컬럼으로 최상위 30% 이내의 값을 추출함

			String sql = "SELECT * FROM (SELECT A.* ,Rownum Rnum FROM (SELECT * FROM board ORDER BY ref desc, re_step asc) A) WHERE Rnum >= ? and Rnum <= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardDTO bean = new BoardDTO();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContents(rs.getString(11));

				// 가져온 데이터를 벡터 배열방에 저장
				v.add(bean);
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	//===========================================================================
	// insert into
	public void insertBoard(BoardDTO bean) {
		getCon();
		// bean 객체에 담겨있지 않은 속성 초기화
		int ref = 0; // 글의 개수
		int re_step = 1;
		int re_level = 1;

		try {
			String resql = "select max(ref) from board";
			pstmt = con.prepareStatement(resql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				ref = rs.getInt(1) + 1;
			}
			String sql = "insert into board values(board_seq.nextval,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bean.getContents());
			pstmt.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//===========================================================================
	//하나의 게시글 가져오기
	public BoardDTO getOneBoard(int num) {
		getCon();

		BoardDTO bean = null;
		try {
			// 글 읽으면 조회수 증가
			String countsql = "update board set readcount = readcount + 1 where num = ?";
			pstmt = con.prepareStatement(countsql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

			// 상세정보 가져오기
			String sql = "select * from board where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean = new BoardDTO();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContents(rs.getString(11));
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	//===========================================================================
	//댓글 입력하기
	public void reInsertBoard(BoardDTO bean) {
		getCon();
		// bean 객체가 가지고 온 값을 대입
		int ref = bean.getRef();
		int re_step = bean.getRe_step();
		int re_level = bean.getRe_level();

		try {
			String levelsql = "update board set re_level = re_level + 1 where ref = ? and re_level > ?";
			pstmt = con.prepareStatement(levelsql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, re_level);
			pstmt.executeUpdate();

			String sql = "insert into board values(board_seq.nextval,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step + 1);
			pstmt.setInt(7, re_level + 1);
			pstmt.setString(8, bean.getContents());
			pstmt.executeUpdate();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//===========================================================================
	//Update할 데이터 가져오기 (단, 조회수는 증가되지 않음)
	public BoardDTO getOneUpdateBoard(int num) {
		getCon();

		BoardDTO bean = null;
		try {
			String sql = "select * from board where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean = new BoardDTO();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContents(rs.getString(11));
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	//===========================================================================
	//Update
	public void UpdateBoard(int num, String subject, String contents) {

		getCon();
		try {
			String sql = "update board set subject=?,contents=? where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, subject);
			pstmt.setString(2, contents);
			pstmt.setInt(3, num);

			pstmt.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//===========================================================================
	//삭제하기
	public void DeleteBoard(int num) {

		getCon();
		try {
			String sql = "delete from board where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);

			pstmt.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
