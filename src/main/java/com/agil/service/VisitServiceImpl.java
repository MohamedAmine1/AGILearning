package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.VisitDao;
import com.agil.entities.Visit;

@Service
public class VisitServiceImpl implements VisitService {
	
	private VisitDao visitDao;

	public void setVisitDao(VisitDao visitDao) {
		this.visitDao = visitDao;
	}

	@Transactional
	public List<Visit> listVisits() {
		
		return this.visitDao.listVisits();
	}

	@Transactional
	public void addVisit(Visit v) {
		
		this.visitDao.addVisit(v);

	}

	@Transactional
	public List<Visit> getVisitByUsername(String username) {
		
		return this.visitDao.getVisitByUsername(username);
	}

	@Transactional
	public void updateVisit(Visit v) {
		this.visitDao.updateVisit(v);
		
	}
	
	@Transactional
	public List<Visit> MaxVisit(){
		return this.visitDao.MaxVisit();
	}

}
