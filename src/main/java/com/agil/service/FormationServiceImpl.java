package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.FormationDao;
import com.agil.entities.Formation;

@Service
public class FormationServiceImpl implements FormationService {
	
	private FormationDao formationDao;
	public void setFormationDao(FormationDao formationDao) {
		this.formationDao = formationDao;
	}

	@Transactional
	public List<Formation> listFormations() {
		
		return this.formationDao.listFormations();
	}

	@Transactional
	public void addFormation(Formation f) {
		this.formationDao.addFormation(f);

	}

	@Transactional
	public void updateFormation(Formation f) {
		this.formationDao.updateFormation(f);
		
	}

	@Transactional
	public void removeFormation(String titre) {
		this.formationDao.removeFormation(titre);
		
	}

	@Transactional
	public Formation getFormationById(int id) {
		return this.formationDao.getFormationById(id);
	}

	@Transactional
	public Formation getFormationByTitre(String titre) {
		return this.formationDao.getFormationByTitre(titre);
	}

	@Transactional
	public List<Formation> maxNbVisit() {
		return this.formationDao.maxNbVisit();
	}

	public List<Formation> FirstFormation() {
		
		return this.formationDao.FirstFormation();
	}

}
