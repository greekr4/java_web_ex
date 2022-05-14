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
 * Servlet implementation class DelTour_board
 */
@WebServlet("/DelTour_boardCtrl")
public class DelTour_boardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelTour_boardCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_del_no = request.getParameter("board_del_no");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "delete from tour_board where tour_board_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board_del_no);
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
