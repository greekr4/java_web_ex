package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.Shop_BoardVO;
import com.shop.model.BoardDAO;

/**
 * Servlet implementation class GetBoardSearchList
 */
@WebServlet("/GetBoardSearchList")
public class GetBoardSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBoardSearchList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String s_type = request.getParameter("s_type");
		String s_detail = request.getParameter("s_detail");
		ArrayList<Shop_BoardVO> Volist = new ArrayList<Shop_BoardVO>();
		BoardDAO DAO = new BoardDAO();
		if(s_type.equals("tit")) {
			Volist = DAO.getBoardSearch_tit(s_detail);
		}else {
			Volist = DAO.getBoardSearch_con(s_detail);
		}

		request.setAttribute("BoardVolist", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./board/BoardList.jsp");
		view.forward(request, response);
		
		
	}

}
