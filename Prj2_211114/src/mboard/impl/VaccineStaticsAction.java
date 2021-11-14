package mboard.impl;

import java.io.IOException;
import java.text.ParseException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;
import mboard.dao.VaccineStaticsDao;

public class VaccineStaticsAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				String         path     = "/view/VaccineStatics.jsp";
				
				// 목록조회
				//MenuDao        menuDao   =  new MenuDao();
				//List<MenuVo>   menuList  =  menuDao.getMenuList();
				//System.out.println("MenuActionList:" + menuList);
				
				//request.setAttribute("menuList", menuList);
				
				//request.getRequestDispatcher(path).forward(request, response);
				
				VaccineStaticsDao vDao		= new VaccineStaticsDao();
				Vector		VaccineStatics				= vDao.VaccineDao();
				
				System.out.println("VaccineStaticsAction:" + VaccineStatics);
				request.setAttribute("VaccineStatics", VaccineStatics);
				request.getRequestDispatcher(path).forward(request, response);
				
				
			}
	}


