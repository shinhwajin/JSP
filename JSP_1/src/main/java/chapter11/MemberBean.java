package chapter11;

public class MemberBean {

	private String id;
	private String pass;
	private String email;
	private String phone;
	private String address;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}


	/*
	- VO (Value Object) : ������� ������ ����ϴ� ��ü (Read-Only)
	- DTO (Data Transfer Object) : View -> Controller -> Service(�޼ҵ�) -> DAO (Access)
					�̷� �������� �����͸� ������ �� �ְ� �������ִ� ��(Getter, Setter)
	- Bean : Spring���� Database�� ��Ī�ϴ� ���
			 �����ͺ��̽� ���� �� �������ִ� ��ü
	*/