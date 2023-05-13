package com.project.model;

public class model {
  
	
	private String name;
	
	private String email;
	private String password;
	private String councilact;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
    public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getCouncilact() {
		return councilact;
	}
	public void setCouncilact(String councilact) {
		this.councilact = councilact;
	}
	
	@Override
	public String toString() {
		return "model [name=" + name + ", email=" + email + ", password=" + password + ", councilact=" + councilact
				+ "]";
	}
}
