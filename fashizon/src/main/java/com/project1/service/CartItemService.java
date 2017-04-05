package com.project1.service;

import com.project1.model.CartItems;

public interface CartItemService {
	public abstract void addCartItem(CartItems cartItem);
	public abstract CartItems getCartItem(String cartItemId);
	public abstract void removeCartItem(String cartItemId);
	public abstract void removeAllCartItems(String customerid);

}
