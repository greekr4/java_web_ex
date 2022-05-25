package com.shop.biz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.Shop_MemberVO;
import com.shop.model.MemberDAO;

import net.sf.json.JSONObject;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class MemberJSONCtrl
 */
@WebServlet("/MemberJSONCtrl")
public class MemberJSONCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberJSONCtrl() {
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
			PrintWriter out = response.getWriter();
			MemberDAO DAO = new MemberDAO();
			ArrayList<Shop_MemberVO> Memberlist = null;
			Memberlist = DAO.JSONgetMemberList();
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("Memberlist", Memberlist);
			JSONObject json = new JSONObject();
			json.putAll(map);
			System.out.println(json);
			out.println(json);


			
	}
	

}
