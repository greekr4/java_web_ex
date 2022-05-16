package kr.go.haenam.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditMypage
 */
@WebServlet("/EditMypage")
public class EditMypage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditMypage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String myid = request.getParameter("myid");
		String mypw = request.getParameter("mypw");
		String myname = request.getParameter("myname");
		String mytel = request.getParameter("mytel");
		String myaddress = request.getParameter("myaddress");


		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "update member set "
					+ "member_pw = ? , member_pnum = ?, member_address = ? "
					+ "where member_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mypw);
			pstmt.setString(2, mytel);
			pstmt.setString(3, myaddress);
			pstmt.setString(4, myid);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
				out.println("<script language='javascript'>alert('OK');</script>");
				out.println("<script language='javascript'>location.href='MypageCtrl'</script>");
			} else {	//실패
				out.println("no");
			}
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			}catch (Exception e){
				e.printStackTrace();
			}
		}
	}

}
