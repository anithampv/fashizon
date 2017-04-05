package com.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1.dao.XmapPsDAO;
import com.project1.model.XMAP_Product_Supplier;
@Service
public class XmapPsserviceimpl implements XmapPsservice {
	@Autowired
	private XmapPsDAO xpsdao;
	

	public void addXmapPs(XMAP_Product_Supplier xps) {
		xpsdao.addXmapPs(xps);
	}

	public List<XMAP_Product_Supplier> displayXmapPs() {
		// TODO Auto-generated method stub
		return xpsdao.displayXmapPs();
	}

	public  void deletexmap(String p) {
     xpsdao.deletexmap(p);
	}

	public XMAP_Product_Supplier getxmapById(String xid) {
		
		return xpsdao.getxmapById(xid);
	}

	public void editXmapPs(XMAP_Product_Supplier xmap) {
		xpsdao.editXmapPs(xmap);
		
	}

	

}
