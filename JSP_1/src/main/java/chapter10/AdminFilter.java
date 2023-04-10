package chapter10;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

@WebFilter("/chapter10/admin/*")
public class AdminFilter extends HttpFilter implements Filter {
	// my.conf 파일 가지고 있는 객체
	Properties p;

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		p = (Properties)request.getServletContext().getAttribute("prop");
		p.put("adminId", "SuperUser");

		request.setAttribute("auth", "pwd0808");
		//위에서 설정한 필터 실
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
