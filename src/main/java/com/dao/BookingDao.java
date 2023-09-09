package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Books;

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
}
