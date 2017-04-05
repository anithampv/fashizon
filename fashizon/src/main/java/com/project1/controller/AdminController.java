
package com.project1.controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project1.model.Product;
import com.project1.model.Supplier;
import com.project1.model.XMAP_Product_Supplier;
import com.project1.service.ProductService;
import com.project1.service.SupplierService;
import com.project1.service.XmapPsservice;

@Controller
public class AdminController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private SupplierService supplierservice;
	@Autowired
	private  XmapPsservice xpsservice;
	
	@RequestMapping("/reqProductForm")
	public String displayAddProductForm(Model m,HttpSession hsession){
		m.addAttribute("productObject", new Product());
		m.addAttribute("username", hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "addProduct";
	}
	
	
	@RequestMapping("/reqSupplierForm")
	public String displayAddSupplierForm(Model m,HttpSession hsession){
	m.addAttribute("supplierObject", new Supplier());
	m.addAttribute("username", hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));
	m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "addSupplier";
	}
	
	
	
	@RequestMapping(value={"/addProductToDB"},method = RequestMethod.POST)
	public String addProductToDb(@Valid @ModelAttribute("productObject")Product prd,Model m, HttpSession hsession,BindingResult result){	
		
		if(result.hasErrors())
		return "addProduct";
		productService.addProduct(prd);	
		m.addAttribute("username", hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "loginsuccessadmin";  // displays admins home page			
	}
	
	@RequestMapping("/reqDisplayProductsAdmin")
	public String displayProductsAdmin(Model m,HttpSession hsession){
		List<Product> data = productService.getProducts();
		m.addAttribute("username",hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		m.addAttribute("products",data);
		return "displayproductsadmin";
	}
	
	@RequestMapping(value={"/addSupplierToDB"},method = RequestMethod.POST)
	public String addSupplierToDb(@ModelAttribute("supplierObject")Supplier prd, Model m,HttpSession hsession){		
		supplierservice.addSupplier(prd);		
		m.addAttribute("username",hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "loginsuccessadmin";  // displays admins home page			
	}
	
	@RequestMapping("/reqDisplaySupplierAdmin")
	public String displaySupplierAdmin(Model m,HttpSession hsession){
		List<Supplier> data = supplierservice.getSupplier();
		m.addAttribute("username", hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("supplier",data);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displaysupplieradmin";
	}
	
	@RequestMapping("/reqAddProdSuppForm")
	public String displayAddProdSuppForm(Model m,HttpSession hsession){
		List<Product> prdata = productService.getProducts();
		List<Supplier> supdata = supplierservice.getSupplier();
		m.addAttribute("username", hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("products", prdata);
		m.addAttribute("suppliers", supdata);
		m.addAttribute("prodsuppObject", new XMAP_Product_Supplier());
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "addProdSupp";
	}
	
	@RequestMapping("/reqAddProdSuppDataToDb")
	public String addProdSuppToDb(@ModelAttribute("prodsuppObject")XMAP_Product_Supplier xps){
		//System.out.println(xps.getProductid());
		xpsservice.addXmapPs(xps);
		return "redirect:/reqDisplayXps";
	}
	
	@RequestMapping("/reqDisplayXps")
	public String displayXps(Model m,HttpSession hsession){
		List<XMAP_Product_Supplier> xpsdata =  xpsservice.displayXmapPs();
		m.addAttribute("xpsdata", xpsdata);
		m.addAttribute("username", hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displayXps";
	}
	
	
	@RequestMapping("/reqdeletesupp")
	public String deletesupplier(@RequestParam("sid")String spid){
		supplierservice.deletesupplier(spid);
		return "redirect:/reqDisplaySupplierAdmin";
	}
	@RequestMapping("/reqdeleteprod")
	public String deleteproduct(@RequestParam("pid")String prd){
		productService.deleteProduct(prd);
		return "redirect:/reqDisplayProductsAdmin";
	}

	@RequestMapping("/reqdeletexps")
	public String deletexmap(@RequestParam("prds")String p){
		xpsservice.deletexmap(p);
		return "redirect:/reqDisplayXps";
	}
	
	
	@RequestMapping("/reqeditprod")
	public String editProduct(@RequestParam("pid")String pid,Model m,HttpSession hsession){		
		Product temp = productService.getProductById(pid);
		m.addAttribute("productObj",temp);
		m.addAttribute("username", hsession.getAttribute("username"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "editProductPage";
	}
	
	@RequestMapping("/reqEditProductToDb")
	public String editproducttodb(@ModelAttribute("productObj")Product prd,Model m){
		productService.editProduct(prd);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "redirect:/reqDisplayProductsAdmin";
	}
	
	@RequestMapping("/reqeditsupp")
	public String editsupplier(@RequestParam("sid")String sid,Model m,HttpSession hsession){		
	    Supplier temp = supplierservice.getsupplierById(sid);
		m.addAttribute("supplierObj",temp);
		m.addAttribute("username", hsession.getAttribute("username"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "editSupplierPage";
	}
	
	@RequestMapping("/reqEditSupplierToDb")
	public String editsuppliertodb(@ModelAttribute("supplierobj")Supplier supp){
		supplierservice.editsupplier(supp);
		return "redirect:/reqDisplaySupplierAdmin";
	}
	
	@RequestMapping("/reqeditxmap")
	public String editXmapPs(@RequestParam("psid")String xid,Model m,HttpSession hsession){
		XMAP_Product_Supplier temp= xpsservice.getxmapById(xid);
		m.addAttribute("xmapobj",temp);
		m.addAttribute("username", hsession.getAttribute("username"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		
		return "editxmap";
	}
	@RequestMapping("/reqeditxmapToDb")
	public String editXmapPstodb(@ModelAttribute("xmapobj")XMAP_Product_Supplier xps,Model m){
		xpsservice.editXmapPs(xps);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "redirect:/reqDisplayXps";
		
	}
	
}







	









