package com.agil.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.agil.entities.Evaluation;

@Repository
public class EvaluationDaoImpl implements EvaluationDao {
	
	private static final Logger logger = LoggerFactory.getLogger(EvaluationDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public List<Evaluation> listEvaluation() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Evaluation> evaluationList = session.createQuery("from Evaluation").list();
		for(Evaluation e : evaluationList){
			logger.info("Evaluations List::"+e);
		}
		return evaluationList;
	}

	public void addEvaluation(Evaluation e) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(e);
		logger.info("Test saved successfully, Test Details="+e);

	}

}
