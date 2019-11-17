package com.agil.dao;

import java.util.List;

import com.agil.entities.Admin;

public interface AdminDao {

public	List<Admin> listAdmins();
public  void addAdmin(Admin a);
public List<Admin> login(String usernameAdmin, String passwordAdmin);

}
