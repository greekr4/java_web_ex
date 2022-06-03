package com.shop.cotroller.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.OrderDAO;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] test = request.getParameterValues("gcode[]");
		String[] test2 = request.getParameterValues("qty[]");

		
		int ono = 0;
		int z = 0;
		int x = 0;
		OrderDAO DAO = new OrderDAO();
//		ono = DAO.AddOrder();
		
		for (int i=0;i<test.length;i++) {
			x = Integer.parseInt(test2[i]);
			z = DAO.AddOrder_line(ono, test[i], x);
		}
		for (int i=0;i<test2.length;i++) {
			System.out.println("qty " + i + " = " + test2[i]);
		}
		
		
		
		
	}
	
	
	
	

	

}
