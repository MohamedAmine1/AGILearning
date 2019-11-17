package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.ContactDao;
import com.agil.entities.Contact;

@Service
public class ContactServiceImpl implements ContactService {

	private ContactDao contactDao;
	public void setContactDao(ContactDao contactDao) {
		this.contactDao = contactDao;
	}
	
	@Transactional
	public List<Contact> listContacts() {
		
		return this.contactDao.listContacts();
	}

	@Transactional
	public void addContact(Contact c) {
		this.contactDao.addContact(c);
		
	}

	@Transactional
	public void removeContact(int idContact) {
		this.contactDao.removeContact(idContact);
		
	}

	@Transactional
	public Contact getContactById(int idContact) {
		
		return this.contactDao.getContactById(idContact);
	}

}
