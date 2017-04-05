package com.project1.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class CartItems implements Serializable {
	@Id
	private String cartitemid;
	private int quantity;
	private int itemstotal;
	
	@ManyToOne
	@JoinColumn(name="cartid")
	private Cart cart;
	
	@ManyToOne
	@JoinColumn(name="psid")
	private XMAP_Product_Supplier xmap_product_supplier;

	public String getCartitemid() {
		return cartitemid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getItemstotal() {
		return itemstotal;
	}

	public void setItemstotal(int itemstotal) {
		this.itemstotal = itemstotal;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public XMAP_Product_Supplier getXmap_product_supplier() {
		return xmap_product_supplier;
	}

	public void setXmap_product_supplier(XMAP_Product_Supplier xmap_product_supplier) {
		this.xmap_product_supplier = xmap_product_supplier;
	}

	public void setCartitemid(String cartitemid) {
		this.cartitemid = cartitemid;
	}
	
	
}
