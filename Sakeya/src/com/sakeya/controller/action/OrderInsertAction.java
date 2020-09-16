package com.sakeya.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.CartDAO;
import com.sakeya.dao.OrderDAO;
import com.sakeya.dto.CartVO;
import com.sakeya.dto.MemberVO;

public class OrderInsertAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "SakeyaServlet?command=order_list"; 
        int identify = Integer.parseInt(request.getParameter("identify"));
        System.out.println("identify:"+ identify);
        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser"); 
        if (loginUser == null) {
            url = "SakeyaServlet?command=login_form"; 
        } else {
//        	System.out.println("identify:"+ identify);
            CartDAO cartDAO = CartDAO.getInstance();
            CartVO cartVO = new CartVO();
            
            if(identify==1) {
            cartVO.setId(loginUser.getId());
            cartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
            cartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));

            cartDAO.insertCart(cartVO);

            ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getId());

            OrderDAO orderDAO = OrderDAO.getInstance();

            int maxOseq=orderDAO.insertOrder(cartList, loginUser.getId());
            url = "SakeyaServlet?command=order_list&oseq="+maxOseq;
            }else {

            ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getId());

            OrderDAO orderDAO = OrderDAO.getInstance();

            int maxOseq=orderDAO.insertOrder(cartList, loginUser.getId());
            url = "SakeyaServlet?command=order_list&oseq="+maxOseq;
            }
        }

        response.sendRedirect(url);



    }

}