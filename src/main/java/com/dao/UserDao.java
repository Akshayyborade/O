package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.User;


public class UserDao {
	private org.hibernate.SessionFactory factory = null;
	private Session session = null;
	private Transaction tx= null;
	public UserDao(org.hibernate.SessionFactory session) {
		super();
		// TODO Auto-generated constructor stub
		this.factory=session;
	}
	public boolean registerUser(User user) {
		boolean f = false;
		try {
			session = factory.openSession();
			tx=session.beginTransaction();
			session.save(user);
			tx.commit();
			f=true;
			
		} catch (Exception e) {
			// TODO: handle exception
			f=false;
			e.printStackTrace();
		}
		return f;
	}
     
}
