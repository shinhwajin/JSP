package chapter05;

import java.util.ArrayList;
import java.util.List;

public class AddrService {

	// 주소록 목록을 관리하기 위한 ArrayList (addrlist)
	List<AddrBean> addrlist = new ArrayList<AddrBean>();

	// addrlist 주소록 관리 컬렉션에 주고 저장하는 메소드 (add)
	public void add(AddrBean ab) {
		addrlist.add(ab); // 회원정보 추가
	}

	// 주소록 목록 전달 메소드
	public List<AddrBean> getAddrList() {
		return addrlist;
	}

	// 특정 사용자를 주소록 목록에서 검색하는 메소드 (username 검색)
	public AddrBean getAddr(String username) {

		for (AddrBean ab : addrlist) {
			if (ab.getUsername().equals(username)) { // 회원 찾아서 있으면
				return ab; // 회원 전달
			}
		}
		return null;
	}

}
