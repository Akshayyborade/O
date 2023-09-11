package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Books;
import com.entity.User;

public class BookingDao {
	private SessionFactory factory = null;
	private Session session = null;
	private Transaction tx = null;
	public BookingDao(SessionFactory session) {
		this.factory=session;
	}
	public boolean saveBook(Books book) {
		boolean f = false;
		try {
			session = factory.openSession();
			tx= session.beginTransaction();
		    session.save(book);
		    tx.commit();
		    f=true;
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
	public List<Books> viewTicket(User user) {
		List<Books> list = new ArrayList<Books>();
		try {
			session = factory.openSession();
			
			Query<Books> query = session.createQuery("from Books where user =:us ");
			query.setParameter("us",user);
			list = query.list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}
	public boolean cancelTicket(int id) {
		boolean f = false;
		try {
			session= factory.openSession();
			tx = session.beginTransaction();
			Books books = session.get(Books.class, id);
			session.delete(books);
			tx.commit();
			f=true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
}
