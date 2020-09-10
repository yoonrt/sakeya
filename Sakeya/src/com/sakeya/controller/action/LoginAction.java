package com.sakeya.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.MemberDAO;
import com.sakeya.dto.MemberVO;

public class LoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url="login_fail.jsp";
		 HttpSession session=request.getSession();

		 String id=request.getParameter("id");
		 String pwd=request.getParameter("pwd");

		 MemberDAO memberDAO=MemberDAO.getInstance();
		 MemberVO memberVO=memberDAO.getMember(id);

		 if(memberVO!=null){
		 if(memberVO.getPwd().equals(pwd)){
		 session.removeAttribute("id");
		 session.setAttribute("loginUser", memberVO);
		 
		 url="SakeyaServlet?command=index";
		 }
		 }

		 request.getRequestDispatcher(url).forward(request, response);
		 
		
	}

}
