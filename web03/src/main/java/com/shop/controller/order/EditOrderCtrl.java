package com.shop.controller.order;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.OrderDAO;

/**
 * Servlet implementation class EditOrderCtrl
 */
@WebServlet("/EditOrderCtrl")
public class EditOrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditOrderCtrl() {
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
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type"); //S or P
		int val = Integer.parseInt(request.getParameter("val"));
		int oseq = Integer.parseInt(request.getParameter("oseq"));
		OrderDAO DAO = new OrderDAO();
		int cnt = DAO.Edit_Order_State(type, val, oseq);
		
		if (cnt > 0) {
			//성공
			out.println("<script>alert('성공');</script>");
		}else {
			//실패
			out.println("<script>alert('실패');</script>");
		}
		
	}

}
