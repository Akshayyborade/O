package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookingDao;
import com.db.Hibernetconfig;

/**
 * Servlet implementation class CancelTicketServlet
 */
public class CancelTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		BookingDao dao = new BookingDao(Hibernetconfig.getSessionFactory());
		boolean f = dao.cancelTicket(id);
		HttpSession session = request.getSession();
		if (f) {
			session.setAttribute("msg", "You Sucessfully Cancel Your Ticket");
			response.sendRedirect("user/cancellation.jsp");
		} else {
			session.setAttribute("msg", "Something Went Wrong");
			response.sendRedirect("user/cancellation.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
