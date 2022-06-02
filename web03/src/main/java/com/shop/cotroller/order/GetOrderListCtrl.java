package com.shop.cotroller.order;

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
 * Servlet implementation class GetOrderListCtrl
 */
@WebServlet("/GetOrderListCtrl")
public class GetOrderListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetOrderListCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderDAO DAO = new OrderDAO();
		ArrayList<OrderVO> Volist = DAO.GetOrderList();
		request.setAttribute("OrderList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderList.jsp");
		view.forward(request, response);
	}

}
