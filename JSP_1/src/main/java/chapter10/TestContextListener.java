package chapter10;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//시작과 종료에 대한 이벤트
@WebListener
public class TestContextListener implements ServletContextListener {

	//시작
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext ctx = sce.getServletContext();
		
		//application scope에 객체 저장
		Book mybook = new Book("Spring 레시피", "백설이", 48000, "Soldesk");
		ctx.setAttribute("book", mybook);  //ctx:애플리케이션 영역
		System.out.println("TestContextListener start...");
	}

	//종료
	public void contextDestroyed(ServletContextEvent sce) {

	}

}
