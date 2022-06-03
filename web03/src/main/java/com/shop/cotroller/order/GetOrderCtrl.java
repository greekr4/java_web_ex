package com.shop.cotroller.order;

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
import com.shop.model.BasketDAO;

/**
 * Servlet implementation class GetOrderCtrl
 */
@WebServlet("/GetOrderCtrl")
public class GetOrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetOrderCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sid = (String)session.getAttribute("sid");
		BasketDAO DAO = new BasketDAO();
		ArrayList<BasketVO> Volist = DAO.getBasketList(sid);
		request.setAttribute("BasketVolist", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./order/OrderForm.jsp");
		view.forward(request, response);
	}


}
