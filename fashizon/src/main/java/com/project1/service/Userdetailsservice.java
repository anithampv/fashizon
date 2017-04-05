package com.project1.service;

import java.util.List;

import com.project1.model.Userdetails1;

public interface Userdetailsservice {
	public abstract String addUser(Userdetails1 ud);
	public abstract Userdetails1 loginCheck(Userdetails1 ud);
	public abstract Userdetails1 getUserById(String uid);
	public abstract void editUser(Userdetails1 ud);
	public abstract void enableUser(String uid);
	public abstract void disableUser(String uid);
	public abstract List<Userdetails1> getAllUsers();

	
}


