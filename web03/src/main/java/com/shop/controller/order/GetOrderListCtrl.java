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
		int val = Integer.parseInt(request.getParameter("val"));
		OrderDAO DAO = new OrderDAO();
		if (val == 0) {
		ArrayList<OrderVO> Volist = DAO.GetOrderList();
		request.setAttribute("OrderList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderList.jsp");
		view.forward(request, response);
		}else if(val == 1) {
		ArrayList<OrderVO> Volist = DAO.GetOrderList_pay(2);
		request.setAttribute("OrderList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderList_approve.jsp");
		view.forward(request, response);	
		}else if(val == 2) {
		ArrayList<OrderVO> Volist = DAO.GetOrderList_pay(3);
		ArrayList<ArrayList<OrderVO>> Volist3 = new ArrayList<ArrayList<OrderVO>>();
		for(int i=0;i<Volist.size();i++) {
			int ono = Volist.get(i).getOrder_no();
			ArrayList<OrderVO> Volist2 = DAO.GetOrderMore(ono);
			Volist3.add(Volist2);
			request.setAttribute("OrderList3", Volist3);
			
		}
		request.setAttribute("OrderList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderList_delivery.jsp");
		view.forward(request, response);	
		}
		
	}

}
