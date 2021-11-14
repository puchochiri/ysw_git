package mboard.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;

public class CoronaDistanceAction implements Action {

	@Override
	public void execute(HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		// TODO Auto-generated method stub
		String         path     = "/view/CoronaDistance.jsp";
		
		// 목록조회
		/*
		 * MenuDao menuDao = new MenuDao(); List<MenuVo> menuList =
		 * menuDao.getMenuList(); System.out.println("MenuActionList:" + menuList);
		 * 
		 * request.setAttribute("menuList", menuList);
		 */
		
		request.getRequestDispatcher(path).forward(request, response);	
	}

}



