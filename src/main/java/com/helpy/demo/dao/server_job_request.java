package com.helpy.demo.dao;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "server_job_request")
public class server_job_request {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String job_id;
	private String server_job_id;
	private String name;
	private String category;
	private String location;
	private String location_details;
	private String job_type;
	private float required_cash;
	private float delivery_fee;
	private float total_fee;
	private String time;
	private String other_info;
	private Date dateCreated;
	private String status;
	
	public server_job_request() {
		super();
	}

	public server_job_request(int id, String job_id, String server_job_id, String name, String category,
			 String location, String location_details, String job_type, float required_cash,
			float delivery_fee, float total_fee, String time, String other_info, Date dateCreated, String status) {
		super();
		this.id = id;
		this.job_id = job_id;
		this.server_job_id = server_job_id;
		this.name = name;
		this.category = category;
		this.location = location;
		this.location_details = location_details;
		this.job_type = job_type;
		this.required_cash = required_cash;
		this.delivery_fee = delivery_fee;
		this.total_fee = total_fee;
		this.time = time;
		this.other_info = other_info;
		this.dateCreated = dateCreated;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJob_id() {
		return job_id;
	}

	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}

	public String getServer_job_id() {
		return server_job_id;
	}

	public void setServer_job_id(String server_job_id) {
		this.server_job_id = server_job_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLocation_details() {
		return location_details;
	}

	public void setLocation_details(String location_details) {
		this.location_details = location_details;
	}

	public String getJob_type() {
		return job_type;
	}

	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}

	public float getRequired_cash() {
		return required_cash;
	}

	public void setRequired_cash(float required_cash) {
		this.required_cash = required_cash;
	}

	public float getDelivery_fee() {
		return delivery_fee;
	}

	public void setDelivery_fee(float delivery_fee) {
		this.delivery_fee = delivery_fee;
	}

	public float getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(float total_fee) {
		this.total_fee = total_fee;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getOther_info() {
		return other_info;
	}

	public void setOther_info(String other_info) {
		this.other_info = other_info;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



	

}
