package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.Hibernetconfig;
import com.entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	     String name = request.getParameter("fullName");
	     String email = request.getParameter("email");
	     String password = request.getParameter("password");
	     String about = request.getParameter("about");
	     User user = new User(name, email, password, about);
	     UserDao dao = new UserDao(Hibernetconfig.getSessionFactory());
	     
	     boolean f = dao.registerUser(user);
	     HttpSession session = request.getSession();
	     if(f) {
	    	 session.setAttribute("msg", "Registerd Sucessfully");
	    	 response.sendRedirect("registration.jsp");
	     }else {
	    	 session.setAttribute("msg", "Email already Registred");
	    	 response.sendRedirect("registration.jsp");
	     }
	}

}
