package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.TrainDao;
import com.dao.UserDao;
import com.db.Hibernetconfig;
import com.entity.*;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		doGet(request, response);
		String query = request.getParameter("query");
		out.println("<h1>hii "+query+" welcome to booking </h1>");
		TrainDao dao = new TrainDao(Hibernetconfig.getSessionFactory());
		List<Train> train = dao.getTrainDetails(query);
		HttpSession session = request.getSession();
		if (train==null) {
			session.setAttribute("msg", "Something Went Wrong");
			response.sendRedirect("user/user.jsp");
			
			
		}else{
			session.setAttribute("trains", train);
			response.sendRedirect("user/reservation.jsp");
			
		}
		
		
		
	}

}
