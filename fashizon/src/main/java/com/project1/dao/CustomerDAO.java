package com.project1.dao;

import com.project1.model.Customer;

public interface CustomerDAO {
	public abstract String addCustomer(Customer cust);
	public abstract Customer getCustomerByUserId(String userid);
	public abstract Customer getCustomerByCustId(String custid);
}
