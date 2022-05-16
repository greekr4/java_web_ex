package kr.go.haenam.view;

import java.io.IOException;
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

import kr.go.haenam.model.tour_boardVO;
import kr.go.haenam.model.tour_commentVO;

/**
 * Servlet implementation class GetboardMoreCtrl
 */
@WebServlet("/GetboardMoreCtrl")
public class GetboardMoreCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetboardMoreCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int bno = 0;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from tour_board where tour_board_pidno=?";
			pstmt = conn.prepareStatement(sql);
			String pidno = (request.getParameter("pidno")); 
			pstmt.setString(1, pidno);
			rs = pstmt.executeQuery();
			ArrayList<tour_boardVO> tour_board_detail = new ArrayList<tour_boardVO>();
			while(rs.next()) {
				tour_boardVO tour_board = new tour_boardVO();
				bno = rs.getInt("tour_board_num");
				tour_board.setTour_board_num(rs.getInt("tour_board_num"));
				tour_board.setTour_board_tit(rs.getString("tour_board_tit"));
				tour_board.setTour_board_detail(rs.getString("tour_board_detail"));
				tour_board.setTour_board_writer(rs.getString("tour_board_writer"));
				tour_board.setTour_board_cdate(rs.getString("tour_board_cdate"));
				tour_board.setTour_board_views(rs.getInt("tour_board_views"));
				tour_board.setTour_board_thumb(rs.getInt("tour_board_thumb"));
				tour_board.setTour_board_img1(rs.getString("tour_board_img1"));
				tour_board.setTour_board_img2(rs.getString("tour_board_img2"));
				tour_board.setTour_board_img3(rs.getString("tour_board_img3"));
				tour_board.setTour_board_img4(rs.getString("tour_board_img4"));
				tour_board_detail.add(tour_board);
			}
			rs.close();
			pstmt.close();
			conn.close();
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from tour_comment where tour_comment_bnum=? order by tour_comment_uninum";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			ArrayList<tour_commentVO> tour_comment_list = new ArrayList<tour_commentVO>();
			rs = pstmt.executeQuery();
			while(rs.next()) {
				tour_commentVO tour_comment = new tour_commentVO();
				tour_comment.setTour_comment_uninum(rs.getInt("tour_comment_uninum"));
				tour_comment.setTour_comment_bnum(rs.getInt("tour_comment_bnum"));
				tour_comment.setTour_comment_detail(rs.getString("tour_comment_detail"));
				tour_comment.setTour_comment_name(rs.getString("tour_comment_name"));
				tour_comment.setTour_comment_tdate(rs.getString("tour_comment_tdate"));
				tour_comment.setTour_comment_thumb(rs.getInt("tour_comment_thumb"));
				tour_comment_list.add(tour_comment);
			}
			

			request.setAttribute("tour_board_detail", tour_board_detail);
			request.setAttribute("tour_comment_list", tour_comment_list);
			RequestDispatcher view = request.getRequestDispatcher("tour_board.jsp");
			view.forward(request, response);
			
			
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
