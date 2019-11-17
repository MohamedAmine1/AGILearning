package com.agil.entities;

public class AdminLogin {
	
	private String passwordAdmin;
	private String usernameAdmin;
	
	public AdminLogin() {
		
	}
	public AdminLogin(String usernameAdmin, String passwordAdmin) {
		this.usernameAdmin=usernameAdmin;
		this.passwordAdmin=passwordAdmin;
	}

	public String getPasswordAdmin() {
		return passwordAdmin;
	}

	public void setPasswordAdmin(String passwordAdmin) {
		this.passwordAdmin = passwordAdmin;
	}

	public String getUsernameAdmin() {
		return usernameAdmin;
	}

	public void setUsernameAdmin(String usernameAdmin) {
		this.usernameAdmin = usernameAdmin;
	}
	

}
