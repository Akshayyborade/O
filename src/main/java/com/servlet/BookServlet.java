package com.servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookingDao;
import com.db.Hibernetconfig;
import com.entity.Books;
import com.entity.User;

public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public BookServlet() {
        super();
    }

    public static String generatePNR() {
        // Generate a PNR using a combination of timestamp and random number
        long timestamp = System.currentTimeMillis();
        int random = new Random().nextInt(10000); // Adjust as needed for uniqueness
        return "PNR" + timestamp + random;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String trainNo = request.getParameter("trainNo");
        String trainName = request.getParameter("trainName");
        String noPerson = request.getParameter("noPerson");
        String trainClass = request.getParameter("class"); // Renamed to avoid Java keyword
        String date = request.getParameter("date");
        String from = request.getParameter("from");
        String end = request.getParameter("end");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loginUser");
        
        if (user == null) {
            // Handle the case where the user is not logged in
            session.setAttribute("msg", "Please log in before booking.");
            response.sendRedirect("user/login.jsp"); // Redirect to the login page
            return;
        }

        String pnr = BookServlet.generatePNR();
        Books book = new Books(fullName, trainNo, trainName, noPerson, trainClass, date, from, end, pnr, user);

        try {
            BookingDao dao = new BookingDao(Hibernetconfig.getSessionFactory());
            Boolean f = dao.saveBook(book);

            if (f) {
                session.setAttribute("msg", "Ticket booked successfully!");
                response.sendRedirect("user/book.jsp");
            } else {
                session.setAttribute("msg", "Booking failed. Please try again.");
                response.sendRedirect("user/book.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception for debugging
            session.setAttribute("msg", "An error occurred. Please try again later.");
            response.sendRedirect("user/book.jsp");
        }
    }
}
