package com.shop.controller.order;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.OrderVO;
import com.shop.model.OrderDAO;

/**
 * Servlet implementation class GetOrderCtrl
 */
@WebServlet("/GetOrderMoreCtrl")
public class GetOrderMoreCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetOrderMoreCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ono = Integer.parseInt(request.getParameter("ono"));
		OrderDAO DAO = new OrderDAO();
		ArrayList<OrderVO> Volist = DAO.GetOrderMore(ono);
		request.setAttribute("OrderMoreList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderMore.jsp");
		view.forward(request, response);
	}


}
