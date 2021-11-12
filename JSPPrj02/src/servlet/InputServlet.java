package servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//servlet java에서 html을 사용할 수 있음.
@WebServlet("/InputServlet")
public class InputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 생성자 
    public InputServlet() {
        System.out.println("생성자호출");
        
    }

    // init
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init() 호출");
	}

	// destroy
	public void destroy() {
		System.out.println("destroy() 호출");
	}
	
	// service
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service() 호출");
	}
	
	// doget
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doget 호출");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}
	
	// dopost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost() 호출");
		doGet(request, response);
	}

}
