package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.personVO;

/**
 * Servlet implementation class A03VOContext
 */
@WebServlet("/A03VOContext")
public class A03VOContext extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ServletContext ctx = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    
    @Override
	public void init(ServletConfig config) throws ServletException {
    	ctx = config.getServletContext();
	}
    public A03VOContext() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		personVO taekyun = new personVO();
		taekyun.setName("김태균");
		taekyun.setAddress("파주");
		taekyun.setAge(27);
		taekyun.setIq(99.9);
		
		ctx.setAttribute("taekyun", taekyun);
		ctx.setAttribute("year", 2022);
		ctx.setAttribute("nick", "태균맨");
		out.println("<a href='A04VOResult'>결과서블릿으로 이동</a>");
		
		
	}

}
