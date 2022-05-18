package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class A01Context extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private ServletContext context = null;
    public A01Context() {
        super();
        
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		context = config.getServletContext();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();	
		
		String admin = context.getInitParameter("admin");
		String path = context.getInitParameter("business-layer");
		out.println("<h1>"+admin+"</h1>");
		
		
		String dburl = context.getInitParameter("dburl");
		String dbid = context.getInitParameter("dbid");
		String dbpw = context.getInitParameter("dbpw");
		out.println("<h1>"+dburl+"</h1>");
		out.println("<h1>"+dbid+"</h1>");
		out.println("<h1>"+dbpw+"</h1>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
