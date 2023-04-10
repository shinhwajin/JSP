package chapter09;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Bank2Bean {

	// 멤버변수 = 속성 = 필드
	private int aid;
	private String aname;
	private int balance;

	// 데이터베이스 연결 변수 선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;

	//JNDI를 통한 데이터베이스 연동
	public void connect() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/xe");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//--------------------------------------------------------------------------------------
	//connect 반환 메소드
	public void disconnect() {
		try {
			if(conn != null)
				conn.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("closed");
	}
//--------------------------------------------------------------------------------------
	public void getData() {
		connect();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank2");
			rs.next();
			aid = rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");
		} catch (Exception e) {
			System.out.println(aid + aname + balance);
			System.out.println(e);
		} finally {
			disconnect();
		}
	}
//--------------------------------------------------------------------------------------	

	public int getAid() {
		return aid;
	}

	public String getAname() {
		return aname;
	}

	public int getBalance() {
		return balance;
	}

}
