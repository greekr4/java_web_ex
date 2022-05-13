package kr.go.haenam.view;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Edit_Tour_viewCtrl
 */
@WebServlet("/EditTour_viewCtrl")
public class EditTour_viewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTour_viewCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tour_edit_num = request.getParameter("tour_edit_num");
		String tour_edit_id = request.getParameter("tour_edit_id");
		String tour_edit_name = request.getParameter("tour_edit_name");
		String tour_edit_address = request.getParameter("tour_edit_address");
		String tour_edit_tel = request.getParameter("tour_edit_tel");
		String tour_edit_img1 = request.getParameter("tour_edit_img1");
		String tour_edit_img2 = request.getParameter("tour_edit_img2");
		String tour_edit_img3 = request.getParameter("tour_edit_img3");
		String tour_edit_img4 = request.getParameter("tour_edit_img4");
		System.out.println(tour_edit_num);
		System.out.println(tour_edit_id);
		System.out.println(tour_edit_name);
		System.out.println(tour_edit_address);
		System.out.println(tour_edit_img1);
		System.out.println(tour_edit_img2);
		System.out.println(tour_edit_img3);
		System.out.println(tour_edit_img4);
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "update tour_view set "
					+ "tour_id=?,tour_name=?,tour_address=?"
					+ ",tour_tel=?,tour_img1=?,tour_img2=?"
					+ ",tour_img3=?,tour_img4=? "
					+ "where tour_num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tour_edit_id);
			pstmt.setString(2, tour_edit_name);
			pstmt.setString(3, tour_edit_address);
			pstmt.setString(4, tour_edit_tel);
			pstmt.setString(5, tour_edit_img1);
			pstmt.setString(6, tour_edit_img2);
			pstmt.setString(7, tour_edit_img3);
			pstmt.setString(8, tour_edit_img4);
			pstmt.setString(9, tour_edit_num);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
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
