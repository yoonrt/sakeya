package com.sakeya.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sakeya.dao.EventDAO;
import com.sakeya.dto.EventVO;
import com.sakeya.dto.MemberVO;

public class BoardListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	String url = "event_boardList2.jsp";
	
	HttpSession session = request.getSession();
	MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	
	if(loginUser == null) {
		url = "SakeyaServlet?command=login_form";
	}else {
		EventDAO eventDAO = EventDAO.getInstance();
		ArrayList<EventVO> eventList = eventDAO.listEvent(loginUser.getId());
		request.setAttribute("eventList", eventList);
	}
	request.getRequestDispatcher(url).forward(request, response);
	}
}
