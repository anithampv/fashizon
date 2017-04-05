package com.project1.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	private String productid;
	@NotEmpty(message="ENTER PRODUCT-NAME")
	private String productname;
	private String productdesc;
	private boolean isproductavailable;

	@Transient // only for model, will not effect in DB
	private MultipartFile imagefile;	
	
	public MultipartFile getImagefile() {
		return imagefile;
	}
	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductdesc() {
		return productdesc;
	}
	public void setProductdesc(String productdesc) {
		this.productdesc = productdesc;
	}
	public boolean isIsproductavailable() {
		return isproductavailable;
	}
	public void setIsproductavailable(boolean isproductavailable) {
		this.isproductavailable = isproductavailable;
	}

}
