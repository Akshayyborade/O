package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "train")
public class Train {
	@Id
	private int id;
	private String trainNo;
	private String trainName;
	private String startTime;
	private String endTime;
	
	
	public Train() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Train(int id, String trainNo, String trainName, String startTime, String endTime) {
		super();
		this.id = id;
		this.trainNo = trainNo;
		this.trainName = trainName;
		this.startTime = startTime;
		this.endTime = endTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "Train [id=" + id + ", trainNo=" + trainNo + ", trainName=" + trainName + ", startTime=" + startTime
				+ ", endTime=" + endTime + "]";
	}
	

}
