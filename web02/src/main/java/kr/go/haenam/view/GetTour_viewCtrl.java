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

/**
 * Servlet implementation class GetTour_viewCtrl
 */
@WebServlet("/GetTour_viewCtrl")
public class GetTour_viewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTour_viewCtrl() {
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
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select a.tour_id, b.ccode_res, c.dcode_res,a.tour_num,a.tour_name,a.tour_tel,a.tour_address,a.tour_img1 from tour_view a inner join tour_ccode b on substr(a.tour_id,1,1) = b.ccode inner join tour_dcode c on substr(a.tour_id,1,3) = c.dcode order by a.tour_id";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<tour_viewVO> tour_viewList = new ArrayList<tour_viewVO>();
			while(rs.next()) {
				tour_viewVO tour_view = new tour_viewVO();
				tour_view.setTour_id(rs.getString("tour_id"));
				tour_view.setCcode_res(rs.getString("ccode_res"));
				tour_view.setDcode_res(rs.getString("dcode_res"));
				tour_view.setTour_num(rs.getInt("tour_num"));
				tour_view.setTour_name(rs.getString("tour_name"));
//				tour_view.setTour_detail(rs.getString("tour_detail"));
				tour_view.setTour_address(rs.getString("tour_address"));
				tour_view.setTour_tel(rs.getString("tour_tel"));
				tour_view.setTour_img1(rs.getString("tour_img1"));
				tour_viewList.add(tour_view);
			}
			request.setAttribute("tour_viewList", tour_viewList);
			RequestDispatcher view = null;
			String pno = request.getParameter("pno");
			
			if(pno.substring(0,1).equals("A")) {
			view = request.getRequestDispatcher("tour_ctA.jsp#"+pno);
			} else if(pno.substring(0,1).equals("B")) {
			view = request.getRequestDispatcher("tour_ctB.jsp#"+pno);
			} else if(pno.substring(0,1).equals("C")) {
			view = request.getRequestDispatcher("tour_ctC.jsp#"+pno);
			} else if(pno.substring(0,1).equals("D")) {
			view = request.getRequestDispatcher("tour_ctD.jsp#"+pno);
			} else if(pno.substring(0,1).equals("E")) {
			view = request.getRequestDispatcher("tour_ctE.jsp#"+pno);
			} else if(pno.substring(0,1).equals("F")) {
			view = request.getRequestDispatcher("tour_ctF.jsp#"+pno);
			} else if(pno.substring(0,1).equals("G")) {
			view = request.getRequestDispatcher("tour_ctG.jsp#"+pno);
			} else if(pno.substring(0,1).equals("H")) {
			view = request.getRequestDispatcher("tour_ctH.jsp#"+pno);
			} else if(pno.substring(0,1).equals("I")) {
			view = request.getRequestDispatcher("tour_ctI.jsp#"+pno);
			} else if(pno.substring(0,1).equals("J")) {
			view = request.getRequestDispatcher("tour_ctJ.jsp#"+pno);
			}
			
			
			
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
