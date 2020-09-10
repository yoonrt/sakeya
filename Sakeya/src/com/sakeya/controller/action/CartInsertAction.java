package com.sakeya.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.CartDAO;
import com.sakeya.dto.CartVO;
import com.sakeya.dto.MemberVO;

public class CartInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url ="SakeyaServlet?command=cart_list";
		String image= request.getParameter("image");
		
		HttpSession session = request.getSession();
		 MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		 if (loginUser == null) {
		 url = "SakeyaServlet?command=login_form";
		 } else {
		 CartVO cartVO = new CartVO();
		 cartVO.setId(loginUser.getId());
		 cartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
		 cartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		 cartVO.setImage(image);
		
		 CartDAO cartDAO = CartDAO.getInstance();
		 cartDAO.insertCart(cartVO);
		 }
		 response.sendRedirect(url);
	}

}
