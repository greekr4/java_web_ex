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
 * Servlet implementation class EditTour_boardCtrl
 */
@WebServlet("/EditTour_boardCtrl")
public class EditTour_boardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTour_boardCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tour_board_num = request.getParameter("tour_board_num");
		//String tour_board_pidno = request.getParameter("tour_board_pidno");
		String tour_board_tit = request.getParameter("tour_board_tit");
		String tour_board_detail = request.getParameter("tour_board_detail");
//		String tour_board_writer = request.getParameter("tour_board_writer");
//		String tour_board_cdate = request.getParameter("tour_board_cdate");
		String tour_board_img1 = request.getParameter("tour_board_img1");
		String tour_board_img2 = request.getParameter("tour_board_img2");
		String tour_board_img3 = request.getParameter("tour_board_img3");
		String tour_board_img4 = request.getParameter("tour_board_img4");

		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "update tour_board set "
					+ "tour_board_tit=?,tour_board_detail=?,"
					+ "tour_board_img1=?,tour_board_img2=?,tour_board_img3=?,tour_board_img4=? "
					+ "where tour_board_num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tour_board_tit);
			pstmt.setString(2, tour_board_detail);
			pstmt.setString(3, tour_board_img1);
			pstmt.setString(4, tour_board_img2);
			pstmt.setString(5, tour_board_img3);
			pstmt.setString(6, tour_board_img4);
			pstmt.setString(7, tour_board_num);
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
