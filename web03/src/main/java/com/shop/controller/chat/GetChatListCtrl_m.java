package com.shop.controller.chat;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.ChatVO;
import com.shop.model.ChatDAO;

/**
 * Servlet implementation class GetChatListCtrl_m
 */
@WebServlet("/GetChatListCtrl_m")
public class GetChatListCtrl_m extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetChatListCtrl_m() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	String sid = (String) session.getAttribute("sid");
    	ChatDAO DAO = new ChatDAO();
    	ArrayList<ChatVO> sendedlist = DAO.getChatlist_m1(sid);
		/* ArrayList<ChatVO> reqedlist = DAO.getChatlist_m2(sid); */
    	request.setAttribute("sendedlist", sendedlist);
		/* request.setAttribute("reqedlist", reqedlist); */
		RequestDispatcher view = request.getRequestDispatcher("./board/Chat.jsp");
		view.forward(request, response);
		
	}

}
