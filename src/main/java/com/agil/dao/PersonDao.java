package com.agil.dao;

import java.util.List;

import com.agil.entities.Person;

public interface PersonDao {
	public	List<Person> listPersons();
	public  void addPerson(Person p);
	public void updatePerson(Person p);
	public void removePerson(int id);
	public void removePerson(String username);
	public Person getPersonById(int id);
	public Person getPersonByUsername(String username);
	public List<Person> login(String username, String password);
	public List<Person> forget(String username, String mail);
}
