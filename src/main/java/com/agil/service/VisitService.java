package com.agil.service;

import java.util.List;

import com.agil.entities.Visit;

public interface VisitService {
	
	public	List<Visit> listVisits();
	public  void addVisit(Visit v);
	public List<Visit> getVisitByUsername(String username);
	public void updateVisit(Visit v);
	public List<Visit> MaxVisit();

}
