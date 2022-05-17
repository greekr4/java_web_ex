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
 * Servlet implementation class AddNoticeCtrl
 */
@WebServlet("/AddNoticeCtrl")
public class AddNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNoticeCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notice_state = Integer.parseInt(request.getParameter("notice_state"));
		String notice_writer = request.getParameter("notice_writer");
		String notice_tit = request.getParameter("notice_tit");
		String notice_detail = request.getParameter("notice_detail");
		String notice_from_date = request.getParameter("notice_from_date");
		String notice_to_date = request.getParameter("notice_to_date");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		int cnt = 0;

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			String sql = "insert into notice (NOTICE_UNINO,NOTICE_STATE,NOTICE_WRITER,NOTICE_TIT,NOTICE_DETAIL,NOTICE_FROM_DATE,NOTICE_TO_DATE) "
					+ "values (NOTICE_SEQ.nextval,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, notice_state);
			pstmt.setString(2, notice_writer);
			pstmt.setString(3, notice_tit);
			pstmt.setString(4, notice_detail);
			pstmt.setString(5, notice_from_date);
			pstmt.setString(6, notice_to_date);
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
