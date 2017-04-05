package com.project1.service;

import com.project1.model.Customer;

public interface CustomerService {
	public abstract String addCustomer(Customer cust);
	public abstract Customer getCustomerByUserId(String userid);
	public abstract Customer getCustomerByCustId(String custid);
}
