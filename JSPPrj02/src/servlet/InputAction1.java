package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calc.Sachic;

@WebServlet("/input1")
public class InputAction1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append("<h1>First Servlet</h1>");
		// 넘어온값처리
		String reqv1 = request.getParameter("v1");
		String reqv2 = request.getParameter("v2");
		
		int		v1	= Integer.parseInt(reqv1);
		int		v2	= Integer.parseInt(reqv2);
		
		Sachic s1 	= new Sachic();
		
		int		v	= s1.add(v1, v2);
		
		
		//출력
		response.setContentType("text/html; charset=utf-8;");
		PrintWriter out = response.getWriter();
		String		html = "";
		
		/*
		 * <html> <head> <meta charset="UTF-8"> <title>Insert title here</title> </head>
		 * <body> <div> <p>v1:<% out.print(v1); %>></p> <p>v2:<% out.print(v2); %>></p>
		 * <p>v:<% out.print(v); %>></p> </div> </body>
		 */
		
		
		html 			+= "<html>";
		html 			+= "<head>";
		html 			+= "<meta charset=\"UTF-8\">";
		html 			+= "<title>Insert title here</title>";
		html 			+= "</head>";
		html 			+= "<body>";
		html 			+= "<h1>계산결과</h1>";
		html 			+= "<div>";
		html			+= " <p>v1:" 	+ v1  + "</p>";
		html			+= " <p>v2:" 	+ v2  + "</p>";
		html			+= " <p>v:"  	+ v  + "</p>";
		html 			+= "</div>";
		html 			+= "</body>";
		html 			+= "</html>";
		
		
		
		
		out.print(html);
		
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}






