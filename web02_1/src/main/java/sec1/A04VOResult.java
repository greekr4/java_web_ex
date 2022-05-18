package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.personVO;

/**
 * Servlet implementation class A04VOResult
 */
@WebServlet("/A04VOResult")
public class A04VOResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext ctx = null;

    public A04VOResult() {
        super();

    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		ctx = config.getServletContext();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		personVO aa = (personVO) ctx.getAttribute("taekyun");
		out.println(aa.getName());
		out.println(aa.getAddress());
		out.println(aa.getAge());
		out.println(aa.getIq());
		
		
		out.println(ctx.getAttribute("year"));
		out.println(ctx.getAttribute("nick"));
	}

}
