package com.project1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.CustomerDAO;
import com.project1.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDAO customerDao;
	
	public String addCustomer(Customer cust) {
		return  customerDao.addCustomer(cust);
	}

	public Customer getCustomerByUserId(String userid) {
		return customerDao.getCustomerByUserId(userid);
	}
	
	public Customer getCustomerByCustId(String custid){
		return customerDao.getCustomerByCustId(custid);
	}

}
