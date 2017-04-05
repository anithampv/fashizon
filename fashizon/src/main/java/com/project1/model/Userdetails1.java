package com.project1.model;

import java.io.Serializable;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Userdetails1 implements Serializable{
	@Id
	private String userid;
	private String password;
	private boolean enabled;
	private String role;
	@OneToOne(mappedBy="userdetails1")
	private Customer customer;

	/*@Transient // only for model, will not effect in DB
	private MultipartFile imagefile;*/	
	
	public String getUserid() {
		return userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	/*public MultipartFile getImagefile() {
		return imagefile;
	}

	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}*/

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	

}
