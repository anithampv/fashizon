package com.project1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.CartItemsDAO;
import com.project1.model.CartItems;
@Service
public class CartItemServiceimpl implements CartItemService {
	@Autowired
	private CartItemsDAO cartitemdao;
	
	public void addCartItem(CartItems cartItem) {
		cartitemdao.addCartItem(cartItem);
	}
	public CartItems getCartItem(String cartItemId) {
		
		return  cartitemdao.getCartItem(cartItemId);
	}

	public void removeCartItem(String cartItem) {
		cartitemdao.removeCartItem(cartItem);
	}
	
	public void removeAllCartItems(String cart) {
		cartitemdao.removeAllCartItems(cart);
	}

}
