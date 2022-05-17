package kr.go.haenam.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filter.SHA256;
import kr.go.haenam.model.tour_viewVO;

/**
 * Servlet implementation class Edit_Tour_viewCtrl
 */
@WebServlet("/EditmemberCtrl")
public class EditmemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditmemberCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String member_num = request.getParameter("member_num");
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_pw2 = "";
		try {
			member_pw2 = SHA256.encrypt(member_pw);
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String member_name = request.getParameter("member_name");
		String member_pnum = request.getParameter("member_pnum");
		String member_address = request.getParameter("member_address");
		String member_cash = request.getParameter("member_cash");
		String member_point = request.getParameter("member_point");
		String member_grade = request.getParameter("member_grade");

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
					+ "member_id=?,member_pw=?,member_name=?"
					+ ",member_pnum=?,member_address=?,member_cash=?"
					+ ",member_point=?,member_grade=? "
					+ "where member_num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setString(2, member_pw2);
			pstmt.setString(3, member_name);
			pstmt.setString(4, member_pnum);
			pstmt.setString(5, member_address);
			pstmt.setString(6, member_cash);
			pstmt.setString(7, member_point);
			pstmt.setString(8, member_grade);
			pstmt.setString(9, member_num);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
				out.println("<script language='javascript'>alert('OK');</script>");
				out.println("<script language='javascript'>self.close(); </script>");
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
