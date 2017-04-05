package com.project1.dao;

import com.project1.model.CartItems;

public interface CartItemsDAO {
	public abstract void addCartItem(CartItems cartItem);
	public abstract CartItems getCartItem(String cartItemId);
	public abstract void removeCartItem(String cartItemId);
	public abstract void removeAllCartItems(String customerid);
}

