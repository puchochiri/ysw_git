package mboard.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;
import mboard.dao.MenuDao;
import mboard.vo.MenuVo;

public class MenuActionWrite implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//메뉴추가 : menu_name을 insert 한다.
		String menu_name = request.getParameter("menu_name");
		
		MenuDao menuDao = new MenuDao();
		MenuVo menuVo = new MenuVo();
		menuVo.setMenu_name(menu_name);
		menuDao.menuInsert( menuVo );
		
		
		String path = "/mboard?cmd=MENULIST";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
