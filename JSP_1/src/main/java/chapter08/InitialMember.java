package chapter08;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/*
	@WebListener : servlet-api ���̺귯���� �������� �ֳ����̼�
	�� ���ø����̼� ����, ���ῡ ���� �̺�Ʈ ������
	MemberŬ������ ȣ��Ǵ� ���� �ڵ����� ��üȭ�Ǿ� ����Ǵ� ��
 */

@WebListener
public class InitialMember implements ServletContextListener {

	
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context = sce.getServletContext();  //application ������ ��ü
		ArrayList<Member> datas = new ArrayList<Member>();
		
		for(int i=1; i<=8;i++) {
			Member data = new Member("���ڹ�"+i,"test"+i+"@test.co.kr");
			datas.add(data);
		}
		
		datas.add(new Member("�輮��",null));
		datas.add(new Member("�ڼҿ�",null));
		//application ������ ����
		context.setAttribute("members", datas);
		context.setAttribute("member", new Member());  //Member() member = new Member();
	}

	
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	
}
