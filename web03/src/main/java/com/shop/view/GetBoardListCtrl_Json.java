package com.shop.view;

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

import com.shop.common.Shop_BoardVO;
import com.shop.model.BoardDAO;

import net.sf.json.JSONObject;


@WebServlet("/GetBoardListCtrl_Json")
public class GetBoardListCtrl_Json extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetBoardListCtrl_Json() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		response.setContentType("text/html; UTF-8");
    	HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		BoardDAO DAO = new BoardDAO();
		ArrayList<Shop_BoardVO> list = new ArrayList<Shop_BoardVO>();
   		list = DAO.getBoardList_Json();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		JSONObject json = new JSONObject();
		json.putAll(map);
		out.println(json);
	}

}
