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

import kr.go.haenam.model.memberVO;


@WebServlet("/GetCustomerListCtrl")
public class GetCustomerListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetCustomerListCtrl() {
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
			sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<memberVO> memberList = new ArrayList<memberVO>();
			while(rs.next()) {
				memberVO mem = new memberVO();
				mem.setMember_id(rs.getString("member_id"));
				mem.setMember_pw(rs.getString("member_pw"));
				mem.setMember_name(rs.getString("member_name"));
				mem.setMember_pnum(rs.getString("member_pnum"));
				mem.setMember_address(rs.getString("member_address"));
				mem.setMember_cash(rs.getInt("member_cash"));
				mem.setMember_point(rs.getInt("member_point"));
				mem.setMember_grade(rs.getInt("member_grade"));
				mem.setMember_num(rs.getInt("member_num"));
				mem.setMember_latest(rs.getString("member_latest"));
				memberList.add(mem);
			}
			request.setAttribute("memberList", memberList);
			RequestDispatcher view = request.getRequestDispatcher("memberList.jsp");
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
