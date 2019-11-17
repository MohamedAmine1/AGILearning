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

import com.agil.entities.Person;
import com.agil.entities.Visit;

@Repository
public class VisitDaoImpl implements VisitDao {
	
	private static final Logger logger = LoggerFactory.getLogger(VisitDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public List<Visit> listVisits() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Visit> visitsList = session.createQuery("from Visit").list();
		for(Visit v : visitsList){
			logger.info("Visits List::"+v);
		}
		return visitsList;
	}

	public void addVisit(Visit v) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(v);
		logger.info("Visit saved successfully, Visitor Details="+v);

	}

	public List<Visit> getVisitByUsername(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Visit where username = :username");
		q.setString("username", username);
		List<Visit> v = q.list();
		logger.info("Visit loaded successfully, Visit details="+v);
		return v;
	}

	public void updateVisit(Visit v) {
		Session session = this.sessionFactory.getCurrentSession();
		session.merge(v);
		logger.info("Visit updated successfully, Visit Details="+v);
		
	}

	public List<Visit> MaxVisit() {
		Session session = this.sessionFactory.getCurrentSession();
		//
		Criteria criteria = session.createCriteria(Visit.class);
		criteria.setProjection(Projections.max("nbVisit"));
		List list = criteria.list();
		int maxNbVisit = (Integer)list.get(0);
		//
		List<Visit> lv = this.getVisitBMaxNb(maxNbVisit);
		return lv;
	}
	
	private List<Visit> getVisitBMaxNb(int max) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Visit where nbVisit = :max");
		q.setInteger("max", max);
		List<Visit> v = q.list();
		logger.info("Visit loaded successfully, Visit details="+v);
		return v;
	}

}
