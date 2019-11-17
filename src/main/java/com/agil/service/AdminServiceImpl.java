package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.AdminDao;
import com.agil.entities.Admin;



@Service
public class AdminServiceImpl implements AdminService {
	
	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	
	@Transactional
	public List<Admin> listAdmins() {
		return this.adminDao.listAdmins();
	}

	
	@Transactional
	public void addAdmin(Admin a) {
		this.adminDao.addAdmin(a);
	}

	@Transactional
	public List<Admin> login(String usernameAdmin, String passwordAdmin) {
		
		return this.adminDao.login(usernameAdmin, passwordAdmin);
	}

}
