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

import kr.go.haenam.model.noticeVO;

/**
 * Servlet implementation class GetNoticelistCtrl
 */
@WebServlet("/GetNoticelistCtrl")
public class GetNoticelistCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetNoticelistCtrl() {
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
			sql = "select * from notice";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<noticeVO> noticeList = new ArrayList<noticeVO>();
			while(rs.next()) {
				noticeVO notice = new noticeVO();
				notice.setNOTICE_UNINO(rs.getInt("NOTICE_UNINO"));
				notice.setNOTICE_STATE(rs.getInt("NOTICE_STATE"));
				notice.setNOTICE_WRITER(rs.getString("NOTICE_WRITER"));
				notice.setNOTICE_TIT(rs.getString("NOTICE_TIT"));
				notice.setNOTICE_DETAIL(rs.getString("NOTICE_DETAIL"));
				notice.setNOTICE_FROM_DATE(rs.getString("NOTICE_FROM_DATE"));
				notice.setNOTICE_TO_DATE(rs.getString("NOTICE_TO_DATE"));
				notice.setNOTICE_REG_DATE(rs.getString("NOTICE_REG_DATE"));
				notice.setNOTICE_UPDATE_DATE(rs.getString("NOTICE_UPDATE_DATE"));
				notice.setNOTICE_DEL_DATE(rs.getString("NOTICE_DEL_DATE"));
				notice.setNOTICE_VIEW(rs.getInt("NOTICE_VIEW"));
				noticeList.add(notice);
			}
			request.setAttribute("noticeList", noticeList);
			RequestDispatcher view = request.getRequestDispatcher("noticelist.jsp");
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
