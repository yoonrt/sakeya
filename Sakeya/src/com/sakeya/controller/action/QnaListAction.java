package com.sakeya.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.QnaDAO;
import com.sakeya.dto.MemberVO;
import com.sakeya.dto.QnaVO;

public class QnaListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url = "qnaList2.jsp";

		 HttpSession session = request.getSession();
		 MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		 if (loginUser == null) {
		 url = "SakeyaServlet?command=login_form";
		 } else {
		 QnaDAO qnaDAO = QnaDAO.getInstance(); 
		 ArrayList<QnaVO> qnaList = qnaDAO.listQna(loginUser.getId());
		 request.setAttribute("qnaList", qnaList);
		 }
		 request.getRequestDispatcher(url).forward(request, response);
	}

}
