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



/**
 * Servlet implementation class AddTour_viewCtrl
 */
@WebServlet("/AddTour_commentCtrl")
public class AddTour_commentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTour_commentCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tour_comment_bno = request.getParameter("tour_comment_bno");
		String tour_comment_tit = request.getParameter("tour_comment_tit");
		String tour_comment_detail = request.getParameter("tour_comment_detail");
		String tour_comment_name = request.getParameter("tour_comment_name");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "insert into tour_comment values(tour_comment_seq.nextval,?,?,?,TO_CHAR(sysdate,'YY-MM-DD HH24:MI'),0,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tour_comment_bno);
			pstmt.setString(2, tour_comment_detail);
			pstmt.setString(3, tour_comment_name);
			pstmt.setString(4, tour_comment_tit);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
				out.println("<script language='javascript'>self.close(); </script>");
			} else {	//실패

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
