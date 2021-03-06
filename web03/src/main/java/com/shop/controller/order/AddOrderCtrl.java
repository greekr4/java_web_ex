package com.shop.controller.order;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.GoodsVO;
import com.shop.common.OrderVO;
import com.shop.model.BasketDAO;
import com.shop.model.GoodsDAO;
import com.shop.model.OrderDAO;

/**
 * Servlet implementation class AddOrderCtrl
 */
@WebServlet("/AddOrderCtrl")
public class AddOrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrderCtrl() {
        super();
 
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String[] gcode = request.getParameterValues("gcode[]");
		String[] qty = request.getParameterValues("qty[]");
		int tprice = Integer.parseInt(request.getParameter("tprice"));
		String rname = request.getParameter("rname");
		String rtel = request.getParameter("rtel");
		String raddr = request.getParameter("addr");
		String raddr2 = request.getParameter("addr2");
		String postcode = request.getParameter("postcode");
		String remail = request.getParameter("remail");
		String sid = (String) session.getAttribute("sid");
		
		int ono = 0;
		int z = 0;
		int x = 0;
		int gam = 0;
		OrderVO Vo = new OrderVO();
		GoodsVO GoodsVo = new GoodsVO();
		OrderDAO DAO = new OrderDAO();
		BasketDAO DAO2 = new BasketDAO();
		GoodsDAO DAO3 = new GoodsDAO();
		///////입고 등록 전 재고 확인
		
		for (int i=0;i<gcode.length;i++) {
		GoodsVo = DAO3.GetGoods(gcode[i]);
		gam = GoodsVo.getGamount();
		x = Integer.parseInt(qty[i]);
		if (gam < x) {
		out.println("수량이 부족한 항목이 있습니다." + gcode[i]);
		System.out.println("수량이 부족한 항목이 있습니다." + gcode[i]);
		return;
		}
		}
		////////////////
		Vo.setGtotal(tprice);
		Vo.setDelivery_user_name(rname);
		Vo.setDelivery_cellphone(rtel);
		Vo.setDelivery_address(raddr);
		Vo.setDelivery_address_details(raddr2);
		Vo.setDelivery_zip_code(postcode);
		Vo.setOrder_email(remail);
		Vo.setUser_id(sid);
		ono = DAO.AddOrder(Vo);
		if (ono > 0) { //예외처리
		for (int i=0;i<gcode.length;i++) {
			x = Integer.parseInt(qty[i]);
			z = DAO.AddOrder_line(ono, gcode[i], x);		//오더라인 추가
			DAO3.ReleaseGoods(gcode[i], x);					//수량 출고
		}
		DAO2.delBasket(sid);
		}else {
			System.out.println("실패");
		}
		
		


		
		
		
	}

}
