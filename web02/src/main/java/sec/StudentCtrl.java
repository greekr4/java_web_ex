package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Student;

/**
 * Servlet implementation class StudentCtrl
 */
@WebServlet("/StudentCtrl")
public class StudentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		Student st1 = new Student();
		st1.setNo(1);
		st1.setName("김태균");
		st1.setKor(100);
		st1.setEng(100);
		st1.setMat(100);
		
		request.setAttribute("student", st1);
		RequestDispatcher view = request.getRequestDispatcher("ex06.jsp");
		view.forward(request, response);
		
		
		
		
	}

}
