package com.project1.dao;

import java.util.List;

import com.project1.model.Vw_Xmap_Ps;

public interface VwPsDAO {
	public abstract List<Vw_Xmap_Ps> getVwPs();
	public abstract List<Vw_Xmap_Ps> getBestVwPs();
	public abstract List<Vw_Xmap_Ps> getAllSuppProducts(String pid);
	/*public abstract List<Vw_Xmap_Ps>displayProductsUser(String pid);*/
}

