package com.project1.dao;

import java.util.List;

import com.project1.model.Supplier;

public interface SupplierDAO {
	public abstract void addSupplier(Supplier prd);
	public abstract List<Supplier> getSupplier();
	public abstract void deletesupplier(String spid);
	public abstract void editsupplier(Supplier supp);
	public abstract Supplier getsupplierById(String pid);
}


