package com.agil.service;

import java.util.List;

import com.agil.entities.Contact;

public interface ContactService {
	public List<Contact> listContacts();
	public void addContact(Contact c);
	public void removeContact(int idContact);
	public Contact getContactById(int idContact);

}
