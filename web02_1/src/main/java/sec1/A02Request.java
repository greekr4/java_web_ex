package sec1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A02Request
 */
@WebServlet("/A02Request")
public class A02Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02Request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("request.getSchema() => " + request.getScheme()+"<br>");
		out.println("request.getRemoteAddr() => " + request.getRemoteAddr()+"<br>");
		out.println("request.getRequestURL() => " + request.getRequestURL()+"<br>");
		out.println("request.getRequestURL() => " + request.getRequestURL()+"<br>");
		out.println("request.getServletPath() => " + request.getServletPath()+"<br>");
		
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()) {
			String header = headers.nextElement();
			out.println("<h1>"+header+"=>"+request.getHeader(header)+"</h1>");
			
		}
	}

}
