package mboard.impl;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;
import mboard.dao.LoginDao;

public class HomeAction implements Action {
	private static String id;
	private static String sido;
	private static String sigungu;
	
	@Override
	public void execute(HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		// TODO Auto-generated method stub
		String         path     = "/view/Home.jsp";
		
		id	= LoginDao.getId();
		sido = LoginDao.getSido();
		sigungu = LoginDao.getSigungu();
		
		System.out.println("HomeAction id: " + id);
		System.out.println("HomeAction sido: " + sido);
		System.out.println("HomeAction sigungu: " + sigungu);
		
		
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
