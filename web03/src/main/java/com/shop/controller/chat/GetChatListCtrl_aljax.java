package com.shop.controller.chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.ChatVO;
import com.shop.model.ChatDAO;

import net.sf.json.JSONObject;


@WebServlet("/GetChatListCtrl_aljax")
public class GetChatListCtrl_aljax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetChatListCtrl_aljax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		response.setContentType("text/html; UTF-8");
    	HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		ChatDAO DAO = new ChatDAO();
		ArrayList<ChatVO> Chatlist = new ArrayList<ChatVO>();
    	String reqid = request.getParameter("reqid");
    	String sid = (String) session.getAttribute("sid");
    	if (reqid==null) {
    		Chatlist = DAO.getChatlist_m1_json(sid);
    	}else {
    		Chatlist = DAO.getChatlist_m1_json(reqid);
    	}
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Chatlist", Chatlist);
		JSONObject json = new JSONObject();
		json.putAll(map);
		out.println(json);
	}

}
