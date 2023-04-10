package chapter05;

public class LoginBean {

	private String userid;
	private String passwd;
	
	//DB로부터 가져온 아이디와 비번으로 가정
	final String _userid="myuser";
	final String _passwd="12345";
	
	//로그인계정 정보가 맞는지 확인하는 메서드
	public boolean checkUser() {
		if(userid.equals(_userid)&&passwd.equals(_passwd)) {
			return true;
		} else 
			return false;
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}
