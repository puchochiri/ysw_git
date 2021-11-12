package mboard.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;
import mboard.dao.MenuDao;
import mboard.vo.MenuVo;

public class MenuActionList implements Action {

	@Override
	public void execute(HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		// TODO Auto-generated method stub
		String         path     = "/view/menulist.jsp";
		
		// 목록조회
		MenuDao        menuDao   =  new MenuDao();
		List<MenuVo>   menuList  =  menuDao.getMenuList();
		System.out.println("MenuActionList:" + menuList);
		
		request.setAttribute("menuList", menuList);
		
		request.getRequestDispatcher(path).forward(request, response);	
	}

}



