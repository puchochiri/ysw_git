package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

@WebServlet("/MemregServlet")
public class MemregServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost (req, resp);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		String   memname   =  request.getParameter("memname");
		String   uid   =  request.getParameter("userid");
		String   pwd   =  request.getParameter("passwd");
		String   tel   =  request.getParameter("tel");
		String   email   =  request.getParameter("email");
		
		MemberDao mdao = new MemberDao();
		
		try {
			mdao.memreg(memname, uid, pwd, tel, email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	
	}

}













