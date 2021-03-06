package kr.go.haenam.view;

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
 * Servlet implementation class EditNoticeCtrl
 */
@WebServlet("/EditNoticeCtrl")
public class EditNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditNoticeCtrl() {
        super();
        // TODO Auto-generated constructor stub

    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String notice_unino = request.getParameter("notice_unino");
		String notice_state = request.getParameter("notice_state");
		String notice_writer = request.getParameter("notice_writer");
		String notice_tit = request.getParameter("notice_tit");
		String notice_detail = request.getParameter("notice_detail");
		String notice_from_date = request.getParameter("notice_from_date");
		String notice_to_date = request.getParameter("notice_to_date");
		

		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "update notice set notice_state=?,notice_writer=?,notice_tit=?,notice_detail=?,"
					+ "notice_from_date=?,notice_to_date=?,NOTICE_UPDATE_DATE=SYSDATE "
					+ "where NOTICE_UNINO=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, notice_unino);
			pstmt.setString(2, notice_writer);
			pstmt.setString(3, notice_tit);
			pstmt.setString(4, notice_detail);
			pstmt.setString(5, notice_from_date);
			pstmt.setString(6, notice_to_date);
			pstmt.setString(7, notice_unino);

			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //??????
				out.println("<script language='javascript'>self.close(); </script>");
			} else {	//??????
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
