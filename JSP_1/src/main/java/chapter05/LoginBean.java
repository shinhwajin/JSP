package chapter05;

public class LoginBean {

	private String userid;
	private String passwd;
	
	//DB�κ��� ������ ���̵�� ������� ����
	final String _userid="myuser";
	final String _passwd="12345";
	
	//�α��ΰ��� ������ �´��� Ȯ���ϴ� �޼���
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
