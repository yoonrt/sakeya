package com.sakeya.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.OrderDAO;
import com.sakeya.dto.MemberVO;
import com.sakeya.dto.OrderVO;

public class OrderDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "orderDetail.jsp";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "SakeyaServlet?command=login_form";
		} else {
			int oseq = Integer.parseInt(request.getParameter("oseq"));
			OrderDAO orderDAO = OrderDAO.getInstance();
			ArrayList<OrderVO> orderList = orderDAO.listOrderById(loginUser.getId(), "%", oseq);

			int totalPrice = 0;
			for (OrderVO ovo : orderList) {
				System.out.println(ovo.getPrice2());
				System.out.println(ovo.getQuantity());
				totalPrice += ovo.getPrice2()*ovo.getQuantity();
				System.out.println(totalPrice);
			}
			
		
			request.setAttribute("orderDetail", orderList.get(0));
			request.setAttribute("orderList", orderList);
			request.setAttribute("totalprice", totalPrice);

		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
