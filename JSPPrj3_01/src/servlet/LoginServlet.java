package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lg.Member;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost (req, resp);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String   uid   =  request.getParameter("userid");
		String   pwd   =  request.getParameter("passwd");

		Member   mem   = new Member();
		String   name  = "";
		try {
			name = mem.getDBLogin(uid, pwd);
			if( !name.equals("아이디가 암호가 일치하지 않습니다") )  
				session.setAttribute("name", name);
			else
				session.setAttribute("name", "");
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter  out    =  response.getWriter();
		String       html   =  "";
		html     +=  "<div>";
		html     +=  "<h2>로그인 정보</h2>";
		html     +=  "<div>" + name + "</div>";
		html     +=  "<div><a href='list.jsp'>다음페이지</a></div>";
		html     +=  "</div>";
		out.print( html );
		out.close();
	}

}













