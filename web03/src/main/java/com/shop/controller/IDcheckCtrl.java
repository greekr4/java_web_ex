package com.shop.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.MemberDAO;

@WebServlet("/IDcheckCtrl")
public class IDcheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public IDcheckCtrl() {super();}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			MemberDAO DAO = new MemberDAO();
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; UTF-8");
			PrintWriter out = response.getWriter();
			String c_id = request.getParameter("ck_id");
			if(!c_id.equals("")) {//아이디 null값 예외처리
			int ck = DAO.checkid(c_id);
			if (ck == 1) {//중복없음
				out.println(c_id + "는 사용 가능합니다.<br><br>"
						+ "<button onclick='"
						+ "opener.document.getElementById(\"j_id\").readOnly = true;"
						+ "window.close();"
						+ "'>사용하기</button> &nbsp;&nbsp;&nbsp;"
						+ "<button onclick='"
						+ "opener.document.getElementById(\"j_id\").readOnly = false;"
						+ "window.close();"
						+ "'>다시입력</button>");
			}else {//중복됨
				out.println(c_id + "는 사용 불가능합니다.<br><br>"
						+ "<button onclick='"
						+ "opener.document.getElementById(\"j_id\").readOnly = false;"
						+ "window.close();"
						+ "'>네..</button>");
			}
			}else {//아이디 null값
				out.println("아이디를 입력하고 확인해야죠<br><br>"
						+ "<button onclick='"
						+ "opener.document.getElementById(\"j_id\").readOnly = false;"
						+ "window.close();"
						+ "'>네..</button>");
			}
	}  }


