package com.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.CustomerOrderDAO;
import com.project1.model.Cart;
import com.project1.model.CustomerOrder;
import com.project1.model.ProductReview;
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	
@Autowired 
private CustomerOrderDAO customerorderdao;
	public void addCustomerOrder(Cart cart) {
		 customerorderdao.addCustomerOrder(cart);
	}
	public List<CustomerOrder> custOrders(String custid) {
		return customerorderdao.custOrders(custid);
	
	}
	public void addProductReview(ProductReview pr) {
		customerorderdao.addProductReview(pr);
		
	}

}
