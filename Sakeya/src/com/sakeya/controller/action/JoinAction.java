package com.sakeya.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.MemberDAO;
import com.sakeya.dto.MemberVO;

public class JoinAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "login.jsp"; 

         HttpSession session = request.getSession();

         MemberVO memberVO = new MemberVO();
         
         System.out.println(request.getParameter("id"));
         System.out.println(request.getParameter("pwd"));
         System.out.println(request.getParameter("name"));
         System.out.println(request.getParameter("email"));
         System.out.println(request.getParameter("zipNum"));
         System.out.println(request.getParameter("addr1"));
         
         memberVO.setId(request.getParameter("id"));
         memberVO.setPwd(request.getParameter("pwd"));
         memberVO.setName(request.getParameter("name"));
         memberVO.setEmail(request.getParameter("email"));
         memberVO.setZipNum(request.getParameter("zipNum"));
         memberVO.setAddress(request.getParameter("addr1") +
        request.getParameter("addr2"));
         memberVO.setPhone(request.getParameter("phone")); 

         session.setAttribute("id", request.getParameter("id")); 

         MemberDAO memberDAO = MemberDAO.getInstance();
         memberDAO.insertMember(memberVO);

         RequestDispatcher dispatcher = request.getRequestDispatcher(url);
         dispatcher.forward(request, response);

    }

}
