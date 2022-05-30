package com.shop.controller.basket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.BasketVO;
import com.shop.model.BasketDAO;

/**
 * Servlet implementation class AddBasketCtrl
 */
@WebServlet("/AddBasketCtrl")
public class AddBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddBasketCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String gcode = request.getParameter("gcode");
		int bamount = Integer.parseInt(request.getParameter("bamount"));
		String userid = (String) session.getAttribute("sid");
		BasketDAO DAO = new BasketDAO();
		BasketVO Vo = new BasketVO();
		Vo.setGcode(gcode);
		Vo.setUserid(userid);
		Vo.setBamount(bamount);
		if(DAO.addBasket(Vo) > 0) {
			//성공
			out.println("<script>alert('장바구니에 추가되었습니다.') </script>");
		}else {
			//실패
			out.println("<script>alert('실패')</script>");
		}
	}


}
