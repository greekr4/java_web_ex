package kr.go.haenam.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Send_EditTour_board
 */
@WebServlet("/Send_EditTour_board")
public class Send_EditTour_board extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Send_EditTour_board() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int tour_edit_no = Integer.parseInt(request.getParameter("tour_edit_no"));
		RequestDispatcher view = request.getRequestDispatcher("Edit_tour_board.jsp");
		view.forward(request, response);
	}

}
