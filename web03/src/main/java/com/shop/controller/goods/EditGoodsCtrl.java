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


@WebServlet("/EditGoodsCtrl")
public class EditGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditGoodsCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; UTF-8");
		PrintWriter out = response.getWriter();
		int g_no = Integer.parseInt(request.getParameter("g_no"));
		String g_code = request.getParameter("g_code");
		String g_name = request.getParameter("g_name");
		String g_detail = request.getParameter("g_detail");
		String g_image = request.getParameter("g_image");
		int g_price = Integer.parseInt(request.getParameter("g_price"));
		int g_amount = Integer.parseInt(request.getParameter("g_amount"));
		String g_option = request.getParameter("g_option");
		String g_option2 = request.getParameter("g_option2");
		String g_size = request.getParameter("g_size");
		
		GoodsDAO DAO = new GoodsDAO();
		GoodsVO Vo = new GoodsVO();
		Vo.setGno(g_no);
		Vo.setGcode(g_code);
		Vo.setGname(g_name);
		Vo.setGdetail(g_detail);
		Vo.setGimage(g_image);
		Vo.setGprice(g_price);
		Vo.setGamount(g_amount);
		Vo.setGoption(g_option);
		Vo.setGoption2(g_option2);
		Vo.setGsize(g_size);
		if(DAO.EditGoods(Vo)>0) {
			//성공
			out.println("<script>alert('수정성공'); opener.parent.location.reload(); window.close();</script>");
		} else {
			//실패
			out.println("<script>alert('수정실패');window.close();</script>");
		}
	}
	

}
