package com.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.UserdetailsDAO;
import com.project1.model.Userdetails1;
@Service
public class Userdetailsserviceimpl implements Userdetailsservice {
	@Autowired
	private UserdetailsDAO userdetailsdao;
	
	public String addUser(Userdetails1 ud) {		
		return userdetailsdao.addUser(ud);
	}

	public Userdetails1 loginCheck(Userdetails1 ud) {		
		return userdetailsdao.loginCheck(ud);
	}

	public Userdetails1 getUserById(String uid) {
	
		return  userdetailsdao.getUserById(uid);
	}

	public void editUser(Userdetails1 ud) {
		userdetailsdao.editUser(ud);
		
	}

	public void enableUser(String uid) {
		userdetailsdao.enableUser(uid);	
	}
	public void disableUser(String uid) {
		userdetailsdao.disableUser(uid);
		
	}

	public List<Userdetails1> getAllUsers() {
		return userdetailsdao.getAllUsers();
	}
	
	}


