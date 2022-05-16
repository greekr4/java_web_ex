package kr.go.haenam.view;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class AddMemberCtrl
 */
@WebServlet("/AddMemberCtrl")
public class AddMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMemberCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String member_pnum = request.getParameter("member_pnum");
		String member_address = request.getParameter("member_address");
		String member_cash = request.getParameter("member_cash");
		String member_point = request.getParameter("member_point");
		String member_grade = request.getParameter("member_grade");
		System.out.println(member_grade);
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "insert into member values(?,?,?,?,?,?,?,?,MEMBERNUM_SEQ.nextval,'new')";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setString(2, member_pw);
			pstmt.setString(3, member_name);
			pstmt.setString(4, member_pnum);
			pstmt.setString(5, member_address);
			pstmt.setString(6, member_cash);
			pstmt.setString(7, member_point);
			pstmt.setString(8, member_grade);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
				out.println("<script language='javascript'>alert('OK');</script>");
				String sid = (String)session.getAttribute("sid");
				if (sid == null) sid="non-member";
				if (sid.equals("admin")){
				//out.println("<script language='javascript'>alert('Admin');</script>");
					out.println("<script language='javascript'>self.close(); </script>");
				} else {
				//out.println("<script language='javascript'>alert('NotAdmin');</script>");
				out.println("<script language='javascript'>location.href='index.jsp'</script>");
				//response.sendRedirect("index.jsp");
				}
				
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
