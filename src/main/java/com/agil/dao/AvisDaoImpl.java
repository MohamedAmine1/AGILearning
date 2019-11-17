package com.agil.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.agil.entities.Avis;

@Repository
public class AvisDaoImpl implements AvisDao {
	
	private static final Logger logger = LoggerFactory.getLogger(AvisDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public List<Avis> listAvis() {
		
		Session session = this.sessionFactory.getCurrentSession();
		List<Avis> avisList = session.createQuery("from Avis").list();
		for(Avis a : avisList){
			logger.info("Avis List::"+a);
		}
		return avisList;
	}

	public void addAvis(Avis a) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(a);
		logger.info("Avis saved successfully, Avis Details="+a);

	}

}
