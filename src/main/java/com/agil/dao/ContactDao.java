package com.agil.dao;

import java.util.List;

import com.agil.entities.Contact;

public interface ContactDao {
	public List<Contact> listContacts();
	public  void addContact(Contact c);
	public void removeContact(int idContact);
	public Contact getContactById(int idContact);

}
