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



/**
 * Servlet implementation class AddTour_viewCtrl
 */
@WebServlet("/AddTour_viewCtrl")
public class AddTour_viewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTour_viewCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tour_add_id = request.getParameter("tour_add_id");
		String tour_add_name = request.getParameter("tour_add_name");
		String tour_add_address = request.getParameter("tour_add_address");
		String tour_add_tel = request.getParameter("tour_add_tel");
		String tour_add_img1 = request.getParameter("tour_add_img1");
		String tour_add_img2 = request.getParameter("tour_add_img2");
		String tour_add_img3 = request.getParameter("tour_add_img3");
		String tour_add_img4 = request.getParameter("tour_add_img4");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "insert into tour_view values(?,tour_view_seq.nextval,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tour_add_id);
			pstmt.setString(2, tour_add_name);
			pstmt.setString(3, tour_add_address);
			pstmt.setString(4, tour_add_tel);
			pstmt.setString(5, tour_add_img1);
			pstmt.setString(6, tour_add_img2);
			pstmt.setString(7, tour_add_img3);
			pstmt.setString(8, tour_add_img4);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
				out.println("<script language='javascript'>self.close(); </script>");
			} else {	//실패

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
