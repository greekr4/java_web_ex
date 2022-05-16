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

/**
 * Servlet implementation class GetTour_boardListCtrl
 */
@WebServlet("/GetTour_boardListCtrl")
public class GetTour_boardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTour_boardListCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from tour_board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<tour_boardVO> tour_boardList = new ArrayList<tour_boardVO>();
			while(rs.next()) {
				tour_boardVO tour_board = new tour_boardVO();
				tour_board.setTour_board_num(rs.getInt("tour_board_num"));
				tour_board.setTour_board_pidno(rs.getString("tour_board_pidno"));
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
				tour_board.setTour_board_address(rs.getString("tour_board_address"));
				tour_board.setTour_board_tel(rs.getString("tour_board_tel"));
				tour_boardList.add(tour_board);
			}

			request.setAttribute("tour_boardList", tour_boardList);
			RequestDispatcher view = request.getRequestDispatcher("tour_boardList.jsp");
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
