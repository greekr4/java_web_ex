package com.shop.controller.basket;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.BasketVO;
import com.shop.common.GoodsVO;
import com.shop.model.BasketDAO;
import com.shop.model.GoodsDAO;

/**
 * Servlet implementation class GetBasketListCtrl
 */
@WebServlet("/GetBasketListCtrl")
public class GetBasketListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBasketListCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; UTF-8");
			HttpSession session = request.getSession();
			String userid = (String) session.getAttribute("sid");
			GoodsDAO DAO1 = new GoodsDAO();
			BasketDAO DAO2 = new BasketDAO();
			
			ArrayList<BasketVO> Basketlist = DAO2.getBasketList(userid);
			request.setAttribute("Basketlist", Basketlist);
			RequestDispatcher view = request.getRequestDispatcher("./basket/BasketList.jsp");
			view.forward(request, response);
	}

}
