//package com.sakeya.controller.action;
//
//import java.io.IOException;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//import com.sakeya.dao.EventBoardDAO;
//import com.sakeya.dto.BoardVO;
//import com.sakeya.dto.MemberVO;
//
//public class BoardWriteAction implements Action {
//
//	@Override
//	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String url = "SakeyaServlet?command=board_list";
//
//		HttpSession session = request.getSession();
//		int sizeLimit = 5 * 1024 * 1024;
//		String savePath = "image";
//		ServletContext context = session.getServletContext();
//		String uploadFilePath = context.getRealPath(savePath);
//
//		MultipartRequest multi = new MultipartRequest(request, uploadFilePath, sizeLimit, "UTF-8",
//				new DefaultFileRenamePolicy());
//	
//			BoardVO boardVO = new BoardVO();
//			boardVO.setEvtitle(request.getParameter("evtitle"));
//			boardVO.setEvcontent(request.getParameter("evcontent"));
//			EventBoardDAO boardDAO = EventBoardDAO.getInstance();
//			boardDAO.insertboard(boardVO);
//			response.sendRedirect(url);
//	}
//}
