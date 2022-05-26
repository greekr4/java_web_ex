package com.shop.controller.goods;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.GoodsVO;
import com.shop.model.GoodsDAO;

/**
 * Servlet implementation class EditGoods
 */
@WebServlet("/GetEditGoodsCtrl")
public class GetEditGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEditGoodsCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; UTF-8");
		PrintWriter out = response.getWriter();
		int g_no = Integer.parseInt(request.getParameter("g_no"));
		GoodsDAO DAO = new GoodsDAO();
		GoodsVO Vo = new GoodsVO();
		Vo = DAO.GetGoods(g_no);
		request.setAttribute("GoodsVo", Vo);
		RequestDispatcher view = request.getRequestDispatcher("./Goods/GoodsEdit.jsp");
		view.forward(request, response);
	}

}
