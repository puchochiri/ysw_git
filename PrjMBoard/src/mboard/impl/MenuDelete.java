package mboard.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;
import mboard.dao.MenuDao;
import mboard.vo.MenuVo;

public class MenuDelete implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//메뉴추가 : menu_name을 insert 한다.
		String menu_id = request.getParameter("menu_id");
		System.out.println(menu_id);
		MenuDao menuDao = new MenuDao();
		MenuVo menuVo = new MenuVo();
		/*
		 * menuVo.setMenu_name(menu_name);
		 */		
		menuVo.setMenu_id(menu_id);
		menuDao.menuDelete( menuVo );
		
		
		String path = "/mboard?cmd=MENULIST";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
