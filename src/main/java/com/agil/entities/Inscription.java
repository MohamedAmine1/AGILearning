package com.agil.entities;

public class Inscription {
	
	private String username;
	private String password;
	private String confirm_password;
	private String nom;
	private String prenom;
	private String mail;
	
	public Inscription() {
		
	}
	
	public Inscription(String username,String password,String confirm_password,String nom,String prenom,String mail) {
		
		this.username=username;
		this.nom=nom;
		this.prenom=prenom;
		this.password=password;
		this.confirm_password=confirm_password;
		this.mail=mail;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm_password() {
		return confirm_password;
	}

	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	

}
