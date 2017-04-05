package com.project1.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project1.model.Customer;
import com.project1.model.Userdetails1;
import com.project1.model.Vw_Xmap_Ps;
import com.project1.service.CustomerService;
import com.project1.service.Userdetailsservice;
import com.project1.service.VwPsService;

@Controller
public class UserController {
	
@Autowired
private VwPsService vwpsservice;
@Autowired
private Userdetailsservice userservice;
@Autowired
private CustomerService customerService;
@Autowired
private Userdetailsservice userdetailsservice;

@RequestMapping("/reqDisplayProductsUser")
public String displayProductUser(Model m,Principal principal,HttpSession hsession){
	List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs(); 
	//List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs(); 
	m.addAttribute("psdata", psdata);
	Userdetails1 ud= userdetailsservice.getUserById(principal.getName());
	Customer cust=customerService.getCustomerByUserId(ud.getUserid());
	m.addAttribute("username",cust.getCustname());
	m.addAttribute("userid",cust.getCustomerid());
 	hsession.setAttribute("cartsize", hsession.getAttribute("cartsize"));
	/*m.addAttribute("username", hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));*/
	return "displayproductsuser";
}

/*@RequestMapping("/reqAddItemToCart/{psid}")
public String addProductToCart(@PathVariable String psid, @RequestParam("qty")Integer qty){
	System.out.print("\nProduct : " + psid + ", qty : " + qty);
	return null;
	
}*/

@RequestMapping("/reqAllSuppProducts")
public String displayAllSuppProducts(@RequestParam("pid")String pid,Model m,HttpSession hsession){		
	List<Vw_Xmap_Ps> data = vwpsservice.getAllSuppProducts(pid);
	m.addAttribute("allsupp",data);
	m.addAttribute("prdid", data.get(0).getProductid());
	m.addAttribute("prdname",data.get(0).getProductname());
	m.addAttribute("supplierid",data.get(0).getSupplierid());
	m.addAttribute("username", hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));
	return "allSuppProducts";
}

@RequestMapping("/reqEditProfilePage")
public String displayEditUserPage(HttpSession hsession,Model m){
	Userdetails1 ud = userservice.getUserById(hsession.getAttribute("userimage").toString());
	m.addAttribute("username",hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));
	m.addAttribute("userObject",ud);
	return "editProfilePage";
}

@RequestMapping("/reqEditProfileToDb")
public String editProfileToDb(@ModelAttribute("userObject")Userdetails1 ud, HttpSession hsession){		
	userservice.editUser(ud);
	hsession.setAttribute("username",ud.getUserid());
	return "loginsuccessuser";            //reqDisplayProductsUser";
}

@RequestMapping("/reqspringloginpage")
public String displaySpringLoginPage(@RequestParam(value="error",required=false)String error,
		@RequestParam(value="logout",required=false)String logout,Model m,HttpSession hsession){
	    if(error!=null)
			m.addAttribute("error","INVALID LOGIN_ID & PASSWORD - ENTER VALID DETAILS");
			if(logout!=null){
			m.addAttribute("logout", "LOGGED OUT SUCCESSFULLY..!");
			hsession.setAttribute("username",null);
			hsession.setAttribute("userid",null);	
			}
	    return "springloginpage";
			}
		
@RequestMapping("/reqDisplayUsers")
public String displayusers(Model m,HttpSession hsession){		
	List<Userdetails1> userdata = userservice.getAllUsers();
	m.addAttribute("username",hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));
	m.addAttribute("userdata", userdata);
	m.addAttribute("imagenum", CommonController.generateRandomNum());
	return "displayusers";
}

@RequestMapping("reqDisableUser")
public String disableUser(@RequestParam("uid")String uid,Model m,HttpSession hsession){
	userservice.disableUser(uid);
	m.addAttribute("username",hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));
	return "redirect:/reqDisplayUsers";
}

@RequestMapping("reqEnableUser")
public String enableUser(@RequestParam("uid")String uid,Model m,HttpSession hsession){
	userservice.enableUser(uid);
	m.addAttribute("username",hsession.getAttribute("userlogin"));
	m.addAttribute("userid",hsession.getAttribute("userimage"));
	return "redirect:/reqDisplayUsers";
}
}









