package com.agil.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.agil.entities.Contact;
import com.agil.entities.Person;

@Repository
public class ContactDaoImpl implements ContactDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ContactDaoImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public List<Contact> listContacts() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Contact> contactsList = session.createQuery("from Contact").list();
		for(Contact c : contactsList){
			logger.info("Contact List::"+c);
		}
		return contactsList;
	}

	public void addContact(Contact c) {
		Session session = this.sessionFactory.getCurrentSession();
		session.merge(c);
		logger.info("Contact saved successfully, Contact Details="+c);
		
	}

	public void removeContact(int idContact) {
		Session session = this.sessionFactory.getCurrentSession();
		Contact c = (Contact) session.load(Contact.class, new Integer(idContact));
		if(null != c){
			session.delete(c);
		}
		logger.info("Contact deleted successfully, contact details="+c);
	}

	public Contact getContactById(int idContact) {
	
		Session session = this.sessionFactory.getCurrentSession();		
		Contact c = (Contact) session.load(Contact.class, new Integer(idContact));
		logger.info("Contact loaded successfully, Contact details="+c);
		return c;
		
	}
		
	

}
