package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/studentres")
public class studentres extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public studentres() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		System.out.println("시작");
	}

	public void destroy() {
		System.out.println("끝");
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	PrintWriter out = response.getWriter();
	
	String name = request.getParameter("s_name");
	int age = Integer.parseInt(request.getParameter("s_age"));
	String ck_age = "미성";
	if (age >= 19) {
		ck_age ="성";
	}
	out.println("당신의 이름은 " +name+"이며, 나이는 "+age+"세 이고, "+(ck_age)+"년입니다.");
	
	}

//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//Get
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		
//		out.println("GET방식   계산기<br><br>");
//		
//		int v1 = Integer.parseInt(request.getParameter("v1"));
//		int v2 = Integer.parseInt(request.getParameter("v2"));
//		String op_code = request.getParameter("op");
//		double res = 0.00;
//		switch (op_code) {
//		case "+":
//			res = v1 + v2;
//			break;
//			
//		case "-":
//			res = v1 - v2;
//			break;	
//			
//		case "*":
//			res = v1 * v2;
//			break;	
//			
//		case "/":
//			if(v1 == 0 || v2 == 0)
//			{
//				out.println("0으로 나눌 수 없습니다.<br>");
//				return;
//			}
//			res = v1 / v2;
//			break;			
//		}
//		
//		out.println(v1 +" "+ op_code +" "+ v2 + " = " + res);
//	}
//
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//Post
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		
//		out.println("POST방식   계산기<br><br>");
//		
//		int v1 = Integer.parseInt(request.getParameter("v1"));
//		int v2 = Integer.parseInt(request.getParameter("v2"));
//		String op_code = request.getParameter("op");
//		double res = 0.00;
//		switch (op_code) {
//		case "+":
//			res = v1 + v2;
//			break;
//			
//		case "-":
//			res = v1 - v2;
//			break;	
//			
//		case "*":
//			res = v1 * v2;
//			break;	
//			
//		case "/":
//			if(v1 == 0 || v2 == 0)
//			{
//				out.println("0으로 나눌 수 없습니다.<br>");
//				return;
//			}
//			res = v1 / v2;
//			break;			
//		}
//		
//		out.println(v1 +" "+ op_code +" "+ v2 + " = " + res);
//		
//	}
//
}
