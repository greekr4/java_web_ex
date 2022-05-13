package kr.go.haenam.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeletememberCtrl
 */
@WebServlet("/DeletememberCtrl")
public class DeletememberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletememberCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String member_num = request.getParameter("member_num");
		
		
				PrintWriter out = response.getWriter();
				Connection conn = null;
				PreparedStatement pstmt = null;
				//ResultSet rs = null;
				int cnt = 0;
				String sql = "";
				try {
					Class.forName("oracle.jdbc.OracleDriver");
					conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SCOTT","TIGER");
					sql = "delete member where member_num = ?";
					
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, member_num);
					cnt = pstmt.executeUpdate();
					if(cnt>=1){ //성공
						out.println("<script language='javascript'>alert('OK');</script>");
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
