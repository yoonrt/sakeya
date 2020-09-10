package com.sakeya.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.CartDAO;
import com.sakeya.dto.CartVO;
import com.sakeya.dto.MemberVO;

public class CartListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url ="cartListexample.jsp";
		
		HttpSession session = request.getSession();
		 MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		 if (loginUser == null) {
		 url = "SakeyaServlet?command=login_form";
		 } else {
			 CartDAO cartDAO = CartDAO.getInstance();
			 ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getId());
		
		 int totalPrice = 0;
		 for (CartVO cartVO : cartList) {
		 totalPrice += cartVO.getPrice2() * cartVO.getQuantity();
		 }
		 request.setAttribute("cartList", cartList);
		 request.setAttribute("totalPrice", totalPrice);
		 }
		 request.getRequestDispatcher(url).forward(request, response);
	}

}
