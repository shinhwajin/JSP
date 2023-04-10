package chapter10;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//���۰� ���ῡ ���� �̺�Ʈ
@WebListener
public class TestContextListener implements ServletContextListener {

	//����
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext ctx = sce.getServletContext();
		
		//application scope�� ��ü ����
		Book mybook = new Book("Spring ������", "�鼳��", 48000, "Soldesk");
		ctx.setAttribute("book", mybook);  //ctx:���ø����̼� ����
		System.out.println("TestContextListener start...");
	}

	//����
	public void contextDestroyed(ServletContextEvent sce) {

	}

}
