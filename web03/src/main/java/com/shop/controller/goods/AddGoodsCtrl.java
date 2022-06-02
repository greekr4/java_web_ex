package com.shop.controller.goods;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shop.common.GoodsVO;
import com.shop.model.GoodsDAO;

/**
 * Servlet implementation class AddGoods
 */
@WebServlet("/AddGoodsCtrl")
public class AddGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGoodsCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; UTF-8");
		PrintWriter out = response.getWriter();
//		String uploadpath = request.getRealPath("img");
		String path = request.getRealPath(getServletInfo());
		String uploadpath = "D:\\taek\\java_web\\web03\\src\\main\\webapp\\img";
		System.out.println(uploadpath);
		
		int maxSize = 1024*1024*100;
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, "UTF-8", policy);

//		String upload = multi.getFilesystemName("upload");
//		String upload2 = multi.getOriginalFileName("upload");
		
		String sel1 = multi.getParameter("sel1");
		String sel2 = multi.getParameter("sel2");
		//String g_code = multi.getParameter("g_code");
		String g_code = sel1 + sel2;
		String g_name = multi.getParameter("g_name");
		String g_detail = multi.getParameter("g_detail");
		String g_image = multi.getFilesystemName("g_upload");
		int g_price = Integer.parseInt(multi.getParameter("g_price"));
		int g_amount = Integer.parseInt(multi.getParameter("g_amount"));
		String g_option = multi.getParameter("g_option");
		String g_option2 = multi.getParameter("g_option2");
		String g_size = multi.getParameter("g_size");
		
		GoodsDAO DAO = new GoodsDAO();
		GoodsVO Vo = new GoodsVO();
		Vo.setGcode(g_code);
		Vo.setGname(g_name);
		Vo.setGdetail(g_detail);
		Vo.setGimage(g_image);
		Vo.setGprice(g_price);
		Vo.setGamount(g_amount);
		Vo.setGoption(g_option);
		Vo.setGoption2(g_option2);
		Vo.setGsize(g_size);
		
		if ((DAO.AddGoods(Vo) > 0)){
			//글쓰기 성공
			out.println("<script>alert('등록성공'); opener.parent.location.reload(); window.close();</script>");
		} else {
			//글쓰기 실패
			out.println("<script>alert('등록실패'); window.close();</script>");
		}
	}


}
