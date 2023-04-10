package chapter05;

import java.util.ArrayList;
import java.util.List;

public class AddrService {

	// �ּҷ� ����� �����ϱ� ���� ArrayList (addrlist)
	List<AddrBean> addrlist = new ArrayList<AddrBean>();

	// addrlist �ּҷ� ���� �÷��ǿ� �ְ� �����ϴ� �޼ҵ� (add)
	public void add(AddrBean ab) {
		addrlist.add(ab); // ȸ������ �߰�
	}

	// �ּҷ� ��� ���� �޼ҵ�
	public List<AddrBean> getAddrList() {
		return addrlist;
	}

	// Ư�� ����ڸ� �ּҷ� ��Ͽ��� �˻��ϴ� �޼ҵ� (username �˻�)
	public AddrBean getAddr(String username) {

		for (AddrBean ab : addrlist) {
			if (ab.getUsername().equals(username)) { // ȸ�� ã�Ƽ� ������
				return ab; // ȸ�� ����
			}
		}
		return null;
	}

}
