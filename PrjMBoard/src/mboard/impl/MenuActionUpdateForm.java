package mboard.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mboard.base.Action;

public class MenuActionUpdateForm implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String         path     = "/view/menuupdate.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		String menu_id = request.getParameter("menu_id");
		System.out.println("MenuActionUpdateForm:" + menu_id);

	}

}
