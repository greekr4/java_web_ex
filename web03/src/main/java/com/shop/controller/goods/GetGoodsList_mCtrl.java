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
 * Servlet implementation class GetGoodsList_mCtrl
 */
@WebServlet("/GetGoodsList_mCtrl")
public class GetGoodsList_mCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetGoodsList_mCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsDAO DAO = new GoodsDAO();
		ArrayList<GoodsVO> Volist = DAO.GetGoodsList();
		request.setAttribute("GoodsList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./Goods/GoodsList_m.jsp");
		view.forward(request, response);
	}

}
