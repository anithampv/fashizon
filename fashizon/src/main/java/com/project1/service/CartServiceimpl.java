package com.project1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.CartDAO;
import com.project1.model.Cart;
@Service
public class CartServiceimpl implements CartService {
@Autowired
 private CartDAO cartDao;

	public Cart getCart(String cartid) {
		return cartDao.getCart(cartid);
		
	}

	public int getCartSize(Cart cart) {
		return cartDao.getCartSize(cart);
	}

	public void updateCart(Cart cart) {
		cartDao.updateCart(cart);

	}

}
