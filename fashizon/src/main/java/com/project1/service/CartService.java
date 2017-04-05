package com.project1.service;

import com.project1.model.Cart;

public interface CartService {
	public abstract  Cart getCart(String cartid); 
	public abstract int getCartSize(Cart cart);
	public abstract void updateCart(Cart cart);
}

