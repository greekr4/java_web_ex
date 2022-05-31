package com.shop.controller.goods;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.GoodsVO;
import com.shop.model.GoodsDAO;

/**
 * Servlet implementation class GetGoods
 */
@WebServlet("/GetGoodsCtrl")
public class GetGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetGoodsCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsDAO DAO = new GoodsDAO();
		String gcode = request.getParameter("gcode");
		GoodsVO Vo = DAO.GetGoods(gcode);
		request.setAttribute("GoodsVo", Vo);
		RequestDispatcher view = request.getRequestDispatcher("./Goods/GoodsTest2.jsp");
		view.forward(request, response);
	}

}
