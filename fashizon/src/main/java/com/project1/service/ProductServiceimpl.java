package com.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.ProductDAO;
import com.project1.model.Product;
@Service
public class ProductServiceimpl implements ProductService {

	@Autowired
	private ProductDAO productdao;
	
	public void addProduct(Product prd) {
	productdao.addProduct(prd);
}
	
   public List<Product> getProducts() {
	   return productdao.getProducts();
	}
   public Product getProductById(String pid) {
		return productdao.getProductById(pid);
	}

	public void editProduct(Product prd) {
		productdao.editProduct(prd);		
	}

	public void deleteProduct(String prd) {
		productdao.deleteProduct(prd);
	}	
}
