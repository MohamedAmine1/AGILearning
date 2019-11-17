package com.agil.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.agil.entities.Person;



@Repository
public class PersonDaoImpl implements PersonDao {

	private static final Logger logger = LoggerFactory.getLogger(PersonDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	
	public List<Person> listPersons() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Person> personsList = session.createQuery("from Person").list();
		for(Person p : personsList){
			logger.info("Persons List::"+p);
		}
		return personsList;
	}

	public void addPerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Person saved successfully, Person Details="+p);
	}
	
	public void updatePerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.merge(p);
		logger.info("Person updated successfully, Person Details="+p);
	}
	
	public void removePerson(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Person deleted successfully, person details="+p);
	}
	
	public Person getPersonById(int id) {
		
		// Won't Work
		Session session = this.sessionFactory.getCurrentSession();		
		Person p = (Person) session.load(Person.class, new Integer(id));
		logger.info("Person loaded successfully, Person details="+p);
		return p;
	}


	
	public Person getPersonByUsername(String username) {
		
		// This works
		Session session = this.sessionFactory.getCurrentSession();		
		Person p = (Person) session.load(Person.class, new String(username));
		logger.info("Person loaded successfully, Person details="+p);
		return p;
	}
	
	public void removePerson(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new String(username));
		if(null != p){
			session.delete(p);
		}
		logger.info("Person deleted successfully, person details="+p);
	}
	
	public List<Person> login(String username, String password) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Person where username = :username and password = :password");
		q.setString("username", username);
		q.setString("password", password);
		List<Person> personsList = q.list();
		for(Person p : personsList){
			logger.info("Persons List::"+p);
		}
		return personsList;
	}


	public List<Person> forget(String username, String mail) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Person where username = :username and mail = :mail");
		q.setString("username", username);
		q.setString("mail", mail);
		List<Person> personsList = q.list();
		for(Person p : personsList){
			logger.info("Persons List::"+p);
		}
		return personsList;
	}



}
