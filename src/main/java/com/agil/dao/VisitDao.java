package com.agil.dao;

import java.util.List;

import com.agil.entities.Visit;

public interface VisitDao {
	
	public	List<Visit> listVisits();
	public  void addVisit(Visit v);
	public List<Visit> getVisitByUsername(String username);
	public void updateVisit(Visit v);
	public List<Visit> MaxVisit();

}
