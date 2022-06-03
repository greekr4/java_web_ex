package com.shop.cotroller.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.OrderVO;
import com.shop.model.BasketDAO;
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
		OrderVO Vo = new OrderVO();
		OrderDAO DAO = new OrderDAO();
		BasketDAO DAO2 = new BasketDAO();
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
			z = DAO.AddOrder_line(ono, gcode[i], x);
		}
		DAO2.delBasket(sid);
		}else {
			System.out.println("실패");
		}
		
		


		
		
		
	}

}
