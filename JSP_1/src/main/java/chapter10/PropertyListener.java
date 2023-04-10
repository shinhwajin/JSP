package chapter10;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class PropertyListener implements ServletContextListener {

	// ���� �޼ҵ�
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext ctx = sce.getServletContext(); // web.xml�� ���� ������ ��ü

		String file = ctx.getInitParameter("propfile");

		// ������ ����� ������ �Ӽ����� ������ �� �ִ� ��ü ����
		Properties p = new Properties();

		try {
			p.load(new FileInputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		ctx.setAttribute("prop", p);
	}

	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
