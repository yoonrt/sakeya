package com.sakeya.admin.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sakeya.controller.action.Action;
import com.sakeya.dao.QnaDAO;
import com.sakeya.dto.QnaVO;

public class AdminQnaListAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "qnaListadmin.jsp";

        QnaDAO qnaDAO = QnaDAO.getInstance();
        ArrayList<QnaVO> qnaList = qnaDAO.listAllQna();

        request.setAttribute("qnaList", qnaList);

        request.getRequestDispatcher(url).forward(request, response);

    }

}