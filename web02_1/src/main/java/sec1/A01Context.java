package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class A01Context extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ServletContext sc = null;
    private ServletContext con = null;
    public A01Context() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		 sc = config.getServletContext();
		 con = config.getServletContext();
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		con.setAttribute("name", "zlzl");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>ServletContext</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>"+ sc.getInitParameter("logEnabled")+"</h1>");
		out.println("<h1>"+ sc.getInitParameter("debugLevel")+"</h1>");
		out.println("<h1>Major버전 : "+ con.getMajorVersion()+"</h1>");
		out.println("<h1>Minor버전 : "+ con.getMinorVersion()+"</h1>");
		out.println("<h1>서버 : "+ con.getServerInfo()+"</h1>");
		out.println("<h1>ContextName : "+ con.getServletContextName()+"</h1>");
		out.println("<h1>어트리뷰트 name : "+ con.getAttribute("name")+"</h1>");
		con.log("콘솔창");
		out.println("</body>");
		out.println("<html>");
	}

}
