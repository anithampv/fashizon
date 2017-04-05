package com.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.VwPsDAO;
import com.project1.model.Vw_Xmap_Ps;
@Service
public class VwPsServiceimpl implements VwPsService {
	@Autowired
	private VwPsDAO vwpsdao;
	
	public  List<Vw_Xmap_Ps> getVwPs() {
	return vwpsdao.getVwPs();
	}

	public List<Vw_Xmap_Ps> getBestVwPs() {
		return vwpsdao.getBestVwPs();
	}
	public List<Vw_Xmap_Ps> getAllSuppProducts(String pid) {		
		return vwpsdao.getAllSuppProducts(pid);
	}
	/*public List<Vw_Xmap_Ps> displayProductsUser() {
		return vwpsdao.getAllSuppProducts(pid);
	}*/

	
}
