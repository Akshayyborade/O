package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Train;

public class TrainDao {
	private org.hibernate.SessionFactory factory = null;
	private Session session = null;
	private Transaction tx = null;

	public TrainDao(SessionFactory session) {

		super();
		// TODO Auto-generated constructor stub
		this.factory = session;
	}
	   public List<Train> getTrainDetails(String query) {
	        try (Session session = factory.openSession()) {
	            String hql = "FROM Train t WHERE t.trainNo = :query " +
	                         "OR t.trainName = :query " +
	                         "OR t.trainName LIKE :partialQuery";
	            
	            Query<Train> queryObj = session.createQuery(hql, Train.class);
	            queryObj.setParameter("query", query);
	            queryObj.setParameter("partialQuery", "%" + query + "%");
	            
	            List<Train> trains = queryObj.list();
	            return trains;
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Handle exceptions as needed
	        }
	        return null; // If no matching trains are found
	    }}
