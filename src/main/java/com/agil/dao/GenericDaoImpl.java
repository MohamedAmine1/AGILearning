package com.agil.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class GenericDaoImpl<T extends Serializable> implements GenericDao<T> {


	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(GenericDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	private Class< T > clazz;
	public final void setClazz( Class< T > clazzToSet ){
	      this.clazz = clazzToSet;
	   }	
	public List<T> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		List<T> list = session.createQuery("from "+ clazz.getName()).list();
		for(T x : list){
			logger.info(clazz.getName() + " List::"+x);
		}
		return list;
	}

	public T findOne(int id) {
		Session session = this.sessionFactory.getCurrentSession();
	      return (T) session.get( clazz, id );
	}

	public void create(T entity) {
		 Session session = this.sessionFactory.getCurrentSession();
	      session.persist( entity );
	      logger.info(clazz.getName() + " saved successfully, "+ clazz.getName() +"Details="+entity);
		
	}

	public void update(T entity) {
		Session session = this.sessionFactory.getCurrentSession();
	      session.merge( entity );
	      logger.info(clazz.getName() + " updated successfully, "+ clazz.getName() +" Details= "+entity);
	}

	public void delete(T entity) {
		Session session = this.sessionFactory.getCurrentSession();
	      session.delete( entity );
	      logger.info(clazz.getName() + " deleted successfully, "+ clazz.getName() +" Details= "+entity);
	}

	public void deleteById(int entityId) {
		T entity = findOne( entityId );
	      delete( entity );
	      logger.info(clazz.getName() + " deleted successfully, "+ clazz.getName() +" Details= "+entity);
	}
}
