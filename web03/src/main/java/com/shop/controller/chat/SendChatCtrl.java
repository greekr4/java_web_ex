package com.shop.controller.chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.ChatVO;
import com.shop.model.ChatDAO;

/**
 * Servlet implementation class SendChatCtrl
 */
@WebServlet("/SendChatCtrl")
public class SendChatCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendChatCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
    	String sid = (String) session.getAttribute("sid");
    	String cdetail = request.getParameter("cdetail");
    	String reqid = request.getParameter("reqid");
    	ChatVO Vo = new ChatVO();
    	ChatDAO DAO = new ChatDAO();
    	Vo.setCdetail(cdetail);
    	Vo.setSendid(sid);
    	Vo.setReqid(reqid);
    	int cnt = DAO.sendChat(Vo);
    	
    	if(sid.equals("admin")) {
    		out.println("<script>location.href = './GetChatListCtrl_a'</script>");
    	}else if (cnt > 0) {
    		out.println("<script>location.href = './GetChatListCtrl_m'</script>");
    	}else {
    		out.println("<script>location.href = './GetChatListCtrl_m'</script>");
    	}

	}

}
