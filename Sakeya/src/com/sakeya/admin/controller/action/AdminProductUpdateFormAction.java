package com.sakeya.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sakeya.controller.action.Action;
import com.sakeya.dao.ProductDAO;
import com.sakeya.dto.ProductVO;

public class AdminProductUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "productUpdate.jsp";
		
		String pseq = request.getParameter("pseq").trim();
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProduct(pseq); 
		
		request.setAttribute("productVO", productVO);
		
		String tpage= "1";
		if (request.getParameter("tpage") != null) {
			tpage = request.getParameter("tpage"); 
		}
		
		request.setAttribute("tpage", tpage);
		
		String kindList[] = {"일본소주1","일본소주2","일본소주3","일본소주4","리큐르1","리큐르2","리큐르3","리큐르4","술잔/술병(酒器等)"};
		
		request.setAttribute("kindList", kindList);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
