package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name = "Books")
public class Books {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fullName;
	private String trainNo;
	private String trainName;
	private String noPerson;
	private String trainClass;
	private String trainDate;
	private String trainFrom;
	private String trainEnd;
	@Column(unique = true)
	private String trainPnr;
	@ManyToOne
	private User user;
	public Books( String fullName, String trainNo, String trainName, String noPerson, String trainClass,
			String trainDate, String trainFrom, String trainEnd, String trainPnr, User user) {
		super();
		
		this.fullName = fullName;
		this.trainNo = trainNo;
		this.trainName = trainName;
		this.noPerson = noPerson;
		this.trainClass = trainClass;
		this.trainDate = trainDate;
		this.trainFrom = trainFrom;
		this.trainEnd = trainEnd;
		this.trainPnr = trainPnr;
		this.user = user;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Books() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getTrainNo() {
		return trainNo;
	}
	public void setTrainNo(String trainNo) {
		this.trainNo = trainNo;
	}
	public String getTrainName() {
		return trainName;
	}
	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}
	public String getNoPerson() {
		return noPerson;
	}
	public void setNoPerson(String noPerson) {
		this.noPerson = noPerson;
	}
	public String getTrainClass() {
		return trainClass;
	}
	public void setTrainClass(String trainClass) {
		this.trainClass = trainClass;
	}
	public String getTrainDate() {
		return trainDate;
	}
	public void setTrainDate(String trainDate) {
		this.trainDate = trainDate;
	}
	public String getTrainFrom() {
		return trainFrom;
	}
	public void setTrainFrom(String trainFrom) {
		this.trainFrom = trainFrom;
	}
	public String getTrainEnd() {
		return trainEnd;
	}
	public void setTrainEnd(String trainEnd) {
		this.trainEnd = trainEnd;
	}
	public String getTrainPnr() {
		return trainPnr;
	}
	public void setTrainPnr(String trainPnr) {
		this.trainPnr = trainPnr;
	}
	
}
