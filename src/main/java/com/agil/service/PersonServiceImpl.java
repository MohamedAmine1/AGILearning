package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.GenericDao;
import com.agil.dao.PersonDao;
import com.agil.entities.Person;

@Service
public class PersonServiceImpl implements PersonService {
	
	private PersonDao personDao;
	

	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}
	
	
	@Transactional
	public List<Person> listPersons() {
		return this.personDao.listPersons();
	}
	
	@Transactional
	public void addPerson(Person p) {
		this.personDao.addPerson(p);

	}
	
	@Transactional
	public void updatePerson(Person p) {
		this.personDao.updatePerson(p);
	}
	
	@Transactional
	public void removePerson(int id) {
		this.personDao.removePerson(id);
	}
	
	@Transactional
	public Person getPersonById(int id) {
		return this.personDao.getPersonById(id);
	}
	
	@Transactional
	public Person getPersonByUsername(String username) {
		return this.personDao.getPersonByUsername(username);
	}
	
	@Transactional
	public void removePerson(String username) {
		this.personDao.removePerson(username);
	}


	@Transactional
	public List<Person> login(String username, String password) {
		return this.personDao.login(username, password);
	}


	@Transactional
	public List<Person> forget(String username, String mail) {
		return this.personDao.forget(username, mail);
	}
	


}
