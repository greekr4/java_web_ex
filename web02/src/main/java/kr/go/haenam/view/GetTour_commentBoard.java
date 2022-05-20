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

import kr.go.haenam.model.tour_commentVO;

/**
 * Servlet implementation class GetTour_commentListCtrl
 */
@WebServlet("/GetTour_commentBoard")
public class GetTour_commentBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTour_commentBoard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    /////
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int unino = Integer.parseInt(request.getParameter("unino"));
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from tour_comment where tour_comment_uninum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, unino);
			rs = pstmt.executeQuery();
			ArrayList<tour_commentVO> tour_commentList = new ArrayList<tour_commentVO>();
			while(rs.next()) {
				tour_commentVO tour_comment = new tour_commentVO();
				tour_comment.setTour_comment_uninum(rs.getInt("tour_comment_uninum"));
				tour_comment.setTour_comment_bnum(rs.getInt("tour_comment_bnum"));
				tour_comment.setTour_comment_tit(rs.getString("tour_comment_tit"));
				tour_comment.setTour_comment_detail(rs.getString("tour_comment_detail"));
				tour_comment.setTour_comment_name(rs.getString("tour_comment_name"));
				tour_comment.setTour_comment_tdate(rs.getString("tour_comment_tdate"));
				tour_comment.setTour_comment_thumb(rs.getInt("tour_comment_thumb"));
				tour_commentList.add(tour_comment);
			}
			request.setAttribute("tour_commentList", tour_commentList);
			RequestDispatcher view = request.getRequestDispatcher("commentBoard2.jsp");
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
