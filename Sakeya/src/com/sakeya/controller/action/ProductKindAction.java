package com.sakeya.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sakeya.dao.ProductDAO;
import com.sakeya.dto.ProductVO;

public class ProductKindAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			 throws ServletException, IOException {
		
		String url ="productKind.jsp";
		String kind = request.getParameter("kind").trim();
		
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO>productKindList= productDAO.listKindProduct(kind);
		
		request.setAttribute("productKindList", productKindList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

}
}