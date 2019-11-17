package com.agil.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.agil.entities.Admin;

@Repository
public  class AdminDaoImpl implements AdminDao {
	private static final Logger logger = LoggerFactory.getLogger(AdminDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void addAdmin(Admin a) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(a);
		logger.info("Person saved successfully, Person Details="+a);
	}

	public List<Admin> listAdmins() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Admin> adminsList = session.createQuery("from Admin").list();
		for(Admin a : adminsList){
			logger.info("Admin List::"+a);
		}
		return adminsList;
	}
	
public List<Admin> login(String usernameAdmin, String passwordAdmin) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Admin where username_admin = :username and password_admin = :password");
		q.setString("username", usernameAdmin);
		q.setString("password", passwordAdmin);
		List<Admin> adminsList = q.list();
		for(Admin a : adminsList){
			logger.info("Persons List::"+a);
		}
		return adminsList;
	}

	

}
