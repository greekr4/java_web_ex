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

import kr.go.haenam.model.tour_viewVO;


@WebServlet("/GetTour_viewListCtrl")
public class GetTour_viewListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetTour_viewListCtrl() {
        super();

    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from tour_view";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<tour_viewVO> tour_viewList = new ArrayList<tour_viewVO>();
			while(rs.next()) {
				tour_viewVO tour_view = new tour_viewVO();
				tour_view.setTour_id(rs.getString("tour_id"));
				tour_view.setTour_num(rs.getInt("tour_num"));
				tour_view.setTour_name(rs.getString("tour_name"));
				tour_view.setTour_detail(rs.getString("tour_detail"));
				tour_view.setTour_address(rs.getString("tour_address"));
				tour_view.setTour_tel(rs.getString("tour_tel"));
				tour_view.setTour_img1(rs.getString("tour_img1"));
				tour_view.setTour_img2(rs.getString("tour_img2"));
				tour_view.setTour_img3(rs.getString("tour_img3"));
				tour_view.setTour_img4(rs.getString("tour_img4"));
				tour_viewList.add(tour_view);
			}
			request.setAttribute("tour_viewList", tour_viewList);
			RequestDispatcher view = request.getRequestDispatcher("tour_viewList.jsp");
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
