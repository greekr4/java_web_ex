package com.shop.controller.goods;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.CommentVO;
import com.shop.model.CommentDAO;

/**
 * Servlet implementation class AddCommentCtrl
 */
@WebServlet("/AddCommentCtrl")
public class AddCommentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCommentCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	PrintWriter out = response.getWriter();
	String gcode = request.getParameter("gcode");
	String cid = request.getParameter("cid");
	String cdetail = request.getParameter("cdetail");
	int thumb = Integer.parseInt(request.getParameter("thumb"));
	CommentVO Vo = new CommentVO();
	CommentDAO DAO = new CommentDAO();
	Vo.setCdetail(cdetail);
	Vo.setUser_id(cid);
	Vo.setThumb(thumb);
	Vo.setGcode(gcode);
	int cnt = DAO.addComment(Vo);
	if (cnt > 0) {
		out.println("<script>opener.parent.location.reload(); window.close();</script>");
	}else {
		System.out.println("실패");
		out.println("<script>window.close();</script>");
	}

	}

}
