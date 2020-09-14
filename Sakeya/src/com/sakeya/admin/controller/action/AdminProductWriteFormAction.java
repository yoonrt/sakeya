package com.sakeya.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sakeya.controller.action.Action;

public class AdminProductWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "productWrite.jsp";
		String kindList[] = {"일본소주1","일본소주2","일본소주3","일본소주4","리큐르1","리큐르2","리큐르3","리큐르4","술잔/술병(酒器等)"};
	    request.setAttribute("kindList", kindList);
	    request.getRequestDispatcher(url).forward(request, response);
		
	}

}
