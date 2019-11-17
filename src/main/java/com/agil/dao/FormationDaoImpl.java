package com.agil.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.agil.entities.Formation;

@Repository
public class FormationDaoImpl implements FormationDao {
	
	private static final Logger logger = LoggerFactory.getLogger(FormationDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public List<Formation> listFormations() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Formation> formationsList = session.createQuery("from Formation").list();
		for(Formation f : formationsList){
			logger.info("Formation List::"+f);
		}
		return formationsList;
	}

	public void addFormation(Formation f) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(f);
		logger.info("Formation saved successfully, Formation Details="+f);

	}

	public void updateFormation(Formation f) {
		Session session = this.sessionFactory.getCurrentSession();
		session.merge(f);
		logger.info("Formation updated successfully, Formation Details="+f);
		
	}

	public void removeFormation(String titre) {
		Session session = this.sessionFactory.getCurrentSession();
		Formation f = (Formation) session.load(Formation.class, new String(titre));
		if(null != f){
			session.delete(f);
		}
		logger.info("Formation deleted successfully, formation details="+f);
		
	}

	public Formation getFormationById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Formation f = (Formation) session.load(Formation.class, new Integer(id));
		logger.info("Formation loaded successfully, formation details="+f);
		return f;
	}

	public Formation getFormationByTitre(String titre) {
		Session session = this.sessionFactory.getCurrentSession();		
		Formation f = (Formation) session.load(Formation.class, new String(titre));
		logger.info("Formation loaded successfully, formation details="+f);
		return f;
	}

	public List<Formation> maxNbVisit() {
		Session session = this.sessionFactory.getCurrentSession();
		//
		Criteria criteria = session.createCriteria(Formation.class);
		criteria.setProjection(Projections.max("nbVisit"));
		List list = criteria.list();
		int maxNbVisit = (Integer)list.get(0);
		//
		List<Formation> lf = this.getVisitMaxNb(maxNbVisit);
		return lf;
	}
	private List<Formation> getVisitMaxNb(int max) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Formation where nbVisit = :max");
		q.setInteger("max", max);
		List<Formation> f = q.list();
		logger.info("Formation loaded successfully, Formation details="+f);
		return f;
	}

	public List<Formation> FirstFormation() {
		Session session = this.sessionFactory.getCurrentSession();
		//
		Criteria criteria = session.createCriteria(Formation.class);
		criteria.setProjection(Projections.min("idFormation"));
		List list = criteria.list();
		int minId = (Integer)list.get(0);
		//
		List<Formation> lf = this.getFormattionByMinId(minId);
		return lf;
	}
	private List<Formation> getFormattionByMinId(int min) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Formation where idFormation = :min");
		q.setInteger("min", min);
		List<Formation> f = q.list();
		logger.info("Formation loaded successfully, Formation details="+f);
		return f;
	}

}
