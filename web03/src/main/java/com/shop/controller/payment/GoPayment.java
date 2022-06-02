package com.shop.controller.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BasketVO;
import com.shop.common.GoodsVO;
import com.shop.model.BasketDAO;
import com.shop.model.GoodsDAO;

/**
 * Servlet implementation class GoPayment
 */
@WebServlet("/GoPayment")
public class GoPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoPayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BasketDAO DAO = new BasketDAO();
		int bno = Integer.parseInt(request.getParameter("bno"));
		BasketVO Vo = DAO.getBasket(bno);
		request.setAttribute("BasketVo", Vo);
		RequestDispatcher view = request.getRequestDispatcher("./payment/saleForm.jsp");
		view.forward(request, response);
	}

}
