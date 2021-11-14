package mboard.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;
import mboard.dao.LoginDao;

public class LoginAction implements Action {
	LoginDao lDao;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//메뉴추가 : menu_name을 insert 한다.
		String corona_id = request.getParameter("corona_id");
		String corona_pwd = request.getParameter("corona_pwd");
		System.out.println("LoginAction_id:" + corona_id);
		System.out.println("LoginAction_pwd:" + corona_pwd);
		
		
		lDao = new LoginDao();
		/* MenuVo menuVo = new MenuVo(); */
		/*
		 * menuVo.setMenu_id(menu_id); menuVo.setMenu_name(menu_name);
		 */
		/* menuDao.menuUpdate( menu_id, menu_name); */
		lDao.loginProc(corona_id, corona_pwd);
		

		if (lDao.result == 1) {
			//JOptionPane.showMessageDialog(null, id + "님 환영합니다!", "성공", JOptionPane.INFORMATION_MESSAGE);
			String path = "/mboard?cmd=HOME";
			request.getRequestDispatcher(path).forward(request, response);
		
		} else if (lDao.result == 0) {
			String path = "login.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		} else {
			String path = "login.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		
		
		
	}


}
