package com.helpy.demo.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "la_salle_building")
public class Building {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String buildingName;

	
	public Building() {
	}


	public Building(int id, String buildingName) {
		super();
		this.id = id;
		this.buildingName = buildingName;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getBuildingName() {
		return buildingName;
	}


	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}


	
}
