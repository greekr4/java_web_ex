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
import javax.servlet.http.HttpSession;

import kr.go.haenam.model.memberVO;
import kr.go.haenam.model.tour_boardVO;

/**
 * Servlet implementation class MypageCtrl
 */
@WebServlet("/MypageCtrl")
public class MypageCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sid = (String) session.getAttribute("sid");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
			sql = "select * from member where member_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			ArrayList<memberVO> MemberPage = new ArrayList<memberVO>();
			while(rs.next()) {
				memberVO member = new memberVO();
				member.setMember_id(rs.getString("member_id"));
				member.setMember_pw(rs.getString("member_pw"));
				member.setMember_name(rs.getString("member_name"));
				member.setMember_pnum(rs.getString("member_pnum"));
				member.setMember_address(rs.getString("member_address"));
				member.setMember_cash(rs.getInt("member_cash"));
				member.setMember_point(rs.getInt("member_point"));
				member.setMember_grade(rs.getInt("member_grade"));
				member.setMember_num(rs.getInt("member_num"));
				member.setMember_latest(rs.getString("member_latest"));
				MemberPage.add(member);
			}

			request.setAttribute("MemberPage", MemberPage);
			RequestDispatcher view = request.getRequestDispatcher("mypage.jsp");
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
