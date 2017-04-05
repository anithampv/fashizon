package com.project1.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project1.model.Cart;
import com.project1.model.CartItems;
@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Cart getCart(String cartid) {
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartid);
		session.close();
		return cart;
		
	}

	public int getCartSize(Cart cart) {
		List<CartItems> cartitems = cart.getCartItems();
		return cartitems.size();
	}
	

	public void updateCart(Cart cart) {
		Session session=sessionFactory.openSession();
		session.update(cart);
		session.flush();
		session.close();
		
	}

}
