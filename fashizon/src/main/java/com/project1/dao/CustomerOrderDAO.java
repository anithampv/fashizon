package com.project1.dao;

import java.util.List;

import com.project1.model.Cart;
import com.project1.model.CustomerOrder;
import com.project1.model.ProductReview;

public interface CustomerOrderDAO {
	public void addCustomerOrder(Cart cart);
	public List<CustomerOrder> custOrders(String custid);
	public void addProductReview(ProductReview pr);
}
