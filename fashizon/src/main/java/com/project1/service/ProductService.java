package com.project1.service;

import java.util.List;

import com.project1.model.Product;

public interface ProductService {
	public abstract void addProduct(Product prd);
	public abstract List<Product> getProducts();
	public abstract Product getProductById(String pid);
	public abstract void editProduct(Product prd);
	public abstract void deleteProduct(String prd);
}



