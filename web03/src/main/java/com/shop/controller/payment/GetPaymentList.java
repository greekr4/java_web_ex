package com.shop.controller.payment;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.PaymentVO;
import com.shop.model.PaymentDAO;

/**
 * Servlet implementation class GetPaymentList
 */
@WebServlet("/GetPaymentList")
public class GetPaymentList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPaymentList() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentDAO DAO = new PaymentDAO();
		ArrayList<PaymentVO> Volist = DAO.getPaymentList();
		request.setAttribute("PaymentList", Volist);
		RequestDispatcher view = request.getRequestDispatcher("./payment/PaymentList.jsp");
		view.forward(request, response);
	}

}
