package com.shop.controller.goods;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.GoodsVO;
import com.shop.model.GoodsDAO;

/**
 * Servlet implementation class DelGoods
 */
@WebServlet("/DelGoodsCtrl")
public class DelGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public DelGoodsCtrl() {
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
		int g_no = Integer.parseInt(request.getParameter("g_no"));
		System.out.println(g_no);
		GoodsDAO DAO = new GoodsDAO();
		if(DAO.DelGoods(g_no) > 0) {
			//글쓰기 성공
			out.println("<script>alert('삭제성공'); opener.parent.location.reload(); window.close();</script>");
		} else {
			//글쓰기 실패
			out.println("<script>alert('삭제실패'); window.close();</script>");
		}
	}

}
