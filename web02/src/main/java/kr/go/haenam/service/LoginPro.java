package kr.go.haenam.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



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
		String l_id = request.getParameter("l_id");
		String l_pw = request.getParameter("l_pw");
		System.out.println(l_id);
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from member where member_id = ? and member_pw =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, l_id);
			pstmt.setString(2, l_pw);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				session.setAttribute("sid", rs.getString("member_id"));
				session.setAttribute("sname", rs.getString("member_name"));
				response.sendRedirect("index.jsp");
			} 
			response.sendRedirect("login.jsp");

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
