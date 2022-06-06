package com.shop.controller.basket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.BasketDAO;

/**
 * Servlet implementation class EditBasketCtrl
 */
@WebServlet("/EditBasketCtrl")
public class EditBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBasketCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		int qty = Integer.parseInt(request.getParameter("qty"));
		BasketDAO DAO = new BasketDAO();
		int cnt = DAO.EditBasket_Amount(bno, qty);
		if (cnt > 0) {
			//System.out.println("성공");
		} else {
			System.out.println("실패");
		}
	}

}
