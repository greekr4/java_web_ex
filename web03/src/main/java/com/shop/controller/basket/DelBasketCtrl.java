package com.shop.controller.basket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.shop.model.BasketDAO;

/**
 * Servlet implementation class DelBasketCtrl
 */
@WebServlet("/DelBasketCtrl")
public class DelBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelBasketCtrl() {
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
		BasketDAO DAO = new BasketDAO();
		PrintWriter out = response.getWriter();
		int bno = Integer.parseInt(request.getParameter("bno"));
		if(DAO.delBasket(bno) > 0) {
			//성공
			out.println("<script>alert('삭제성공'); opener.parent.location.reload(); window.close();</script>");
		}else {
			//실패
			out.println("<script>alert('삭제실패');window.close();</script>");
		}
	}

}
