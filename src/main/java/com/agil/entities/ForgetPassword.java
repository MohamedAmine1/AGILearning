package com.agil.entities;

public class ForgetPassword {
	private String mail;
	private String username;
	
	public ForgetPassword(){
		
	}
	
	public ForgetPassword(String username, String mail) {
		this.username=username;
		this.mail=mail;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
