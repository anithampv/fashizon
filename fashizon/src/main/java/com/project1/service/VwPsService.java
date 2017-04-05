package com.project1.service;

import java.util.List;

import com.project1.model.Vw_Xmap_Ps;

public interface VwPsService {
	public List<Vw_Xmap_Ps> getVwPs();
	public List<Vw_Xmap_Ps> getBestVwPs();
	public abstract List<Vw_Xmap_Ps> getAllSuppProducts(String pid);
	/*public abstract List<Vw_Xmap_Ps>displayProductsUser();*/
	
}


