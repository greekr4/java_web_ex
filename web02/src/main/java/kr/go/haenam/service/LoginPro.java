package kr.go.haenam.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import filter.SHA256;



/**
 * Servlet implementation class Loginpro
 */
@WebServlet("/LoginPro")
public class LoginPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginPro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=utf-8");
		String l_id = request.getParameter("l_id");
		String l_pw = request.getParameter("l_pw");
		String l_pw2 = "";
		try {
			l_pw2 = SHA256.encrypt(l_pw);
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println(l_id);
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		PrintWriter out = response.getWriter();
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from member where member_id = ? and member_pw =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, l_id);
			pstmt.setString(2, l_pw2);
			rs = pstmt.executeQuery();
			if(!rs.next()) {
				
				out.println("<script>"
						+ "alert('없음');"
						+ "history.back();"
						+ "</script>");
//				out.println("<script>"
//						+ "var msgvalue = confirm('없음');"
//						+ "if(msgvalue == true){ history.back(); }"
//						+ "else { history.back(); }"
//						+ "</script>");
				//response.sendRedirect("login.jsp");
			}
			else {
				session.setAttribute("sid", rs.getString("member_id"));
				session.setAttribute("sname", rs.getString("member_name"));
				out.println("<script>"
						+ "alert('"+ rs.getString("member_name") +"님 환영합니다!');"
						+ "location.href = 'index.jsp';"
						+ "</script>");
				//response.sendRedirect("index.jsp");
			} 
			
		

			//request.setAttribute("tour_boardList", tour_boardList);
//			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
//			view.forward(request, response);
			
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch (Exception e){
				e.printStackTrace();
			}
		}
	}

}
