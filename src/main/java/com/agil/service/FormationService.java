package com.agil.service;

import java.util.List;

import com.agil.entities.Formation;

public interface FormationService {
	
	public List<Formation> listFormations();
	public  void addFormation(Formation f);
	public void updateFormation(Formation f);
	public void removeFormation(String titre);
	public Formation getFormationById(int id);
	public Formation getFormationByTitre(String titre);
	public List<Formation> maxNbVisit();
	public List<Formation> FirstFormation();

}
