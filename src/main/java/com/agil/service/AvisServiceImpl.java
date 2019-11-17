package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.AvisDao;
import com.agil.entities.Avis;

@Service
public class AvisServiceImpl implements AvisService {
	
	private AvisDao avisDao;

	public void setAvisDao(AvisDao avisDao) {
		this.avisDao = avisDao;
	}

	@Transactional
	public List<Avis> listAvis() {
		
		return this.avisDao.listAvis();
	}

	@Transactional
	public void addAvis(Avis a) {
		
		this.avisDao.addAvis(a);

	}

}
