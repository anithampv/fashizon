package com.project1.dao;

import java.util.List;

import com.project1.model.XMAP_Product_Supplier;

public interface XmapPsDAO {
	public abstract void addXmapPs(XMAP_Product_Supplier xps);
	public abstract List<XMAP_Product_Supplier> displayXmapPs();
	public void deletexmap(String p);
	public abstract XMAP_Product_Supplier getxmapById(String xid);
	public abstract void editXmapPs(XMAP_Product_Supplier xmap);
}


