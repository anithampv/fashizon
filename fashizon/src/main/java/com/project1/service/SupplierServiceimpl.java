package com.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.SupplierDAO;
import com.project1.model.Supplier;
@Service
public class SupplierServiceimpl implements SupplierService{

	@Autowired
	private SupplierDAO supplierdao;
	
	public void addSupplier(Supplier prd) {
	supplierdao.addSupplier(prd);
}
	
   public List<Supplier> getSupplier() {
	   return supplierdao.getSupplier();
	}
public void deletesupplier(String spid) {
	supplierdao.deletesupplier(spid);
}

public void editsupplier(Supplier supp) {
	supplierdao.editsupplier(supp);
	
}

public Supplier getsupplierById(String sid) {
      return  supplierdao.getsupplierById(sid);
}

	
	
}

