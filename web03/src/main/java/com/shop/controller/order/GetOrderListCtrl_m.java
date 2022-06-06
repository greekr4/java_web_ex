package com.shop.controller.order;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.OrderVO;
import com.shop.model.OrderDAO;

/**
 * Servlet implementation class GetOrderListCtrl
 */
@WebServlet("/GetOrderListCtrl_m")
public class GetOrderListCtrl_m extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetOrderListCtrl_m() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sid = (String) session.getAttribute("sid");
		OrderDAO DAO = new OrderDAO();
		ArrayList<OrderVO> Volist = DAO.GetOrderList(sid);
		request.setAttribute("OrderList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderList_m.jsp");
		view.forward(request, response);
	}

}
