package com.agil.dao;

import java.util.List;

import com.agil.entities.Avis;

public interface AvisDao {
	
	public	List<Avis> listAvis();
	public  void addAvis(Avis a);

}
