package com.project1.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project1.model.BillingAddress;
import com.project1.model.Cart;
import com.project1.model.CartItems;
import com.project1.model.Customer;
import com.project1.model.ShippingAddress;
import com.project1.model.Userdetails;
import com.project1.model.Userdetails1;
import com.project1.model.Vw_Xmap_Ps;
import com.project1.service.CartService;
import com.project1.service.CustomerService;
import com.project1.service.Userdetailsservice;
import com.project1.service.VwPsService;
@Controller
public class HomeController {
	@Autowired
	private Userdetailsservice userdetailsservice;
	@Autowired
	private VwPsService vwpsservice;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private CartService cartService;	
	
	@RequestMapping("/")
	public String displayHomePage(Model m){
	/*	m.addAttribute("userObject", new Userdetails());
		m.addAttribute("userObject1", new Userdetails());
		*/
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		Userdetails1 userDetails1 = new Userdetails1();
		
		cust.setUserdetails1(userDetails1);
		cust.setShippingAddress(shippingAddress);		
		
		m.addAttribute("customerObject", cust);
		
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		
		
		List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs();
		m.addAttribute("psdata", psdata);
		
		return "index";
	}
	@RequestMapping("/home")
	public String displayHomePage1(Model m){
		/*m.addAttribute("userObject", new Userdetails());
		m.addAttribute("userObject1", new Userdetails());*/
		
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		Userdetails1 userdetails1 = new Userdetails1();
		
		cust.setUserdetails1(userdetails1);
		cust.setShippingAddress(shippingAddress);		
		m.addAttribute("customerObject", cust);
		List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs();
		m.addAttribute("psdata", psdata);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "index";
	}
	
	@RequestMapping("/reqForLoginPage") // to display loginpage
	public String displayLoginpage(Model m){
		m.addAttribute("userObject", new Userdetails());
		
		return "loginpage";
	}
	@RequestMapping("/reqForSignupPage") // to display signuppage
	public String displaySignuppage(Model m){
		m.addAttribute("userObject", new Userdetails());
		return "signuppage";
	}
	@RequestMapping("/reqSendSignupData")
	public String addUser(@ModelAttribute("userObject")Userdetails1 ud, Model m){
			String uid = userdetailsservice.addUser(ud);
		m.addAttribute("message", "Signup is successfull. New userid : " + uid);
		m.addAttribute("userObject", new Userdetails());
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "springloginpage";
	}
	@RequestMapping("/reqLoginCheck")
	public String authenticate(@ModelAttribute("userObject")Userdetails1 ud,Model m ,HttpSession hsession){
		Userdetails1 result = userdetailsservice.loginCheck(ud);
		if(result==null){
			m.addAttribute("message","LOGIN FAILED TRY AGAIN");
			m.addAttribute("userObject", new Userdetails());
			m.addAttribute("userObject1", new Userdetails());
			
			m.addAttribute("imagenum", CommonController.generateRandomNum());
			return "loginpage";
		}
		else { // login success
			//m.addAttribute("userid",ud.getUserid());
			if(result.getRole().equals("ROLE_ADMIN")){
				m.addAttribute("user",ud);
				m.addAttribute("username",result.getUserid());
				hsession.setAttribute("userlogin",result.getUserid());
				m.addAttribute("userid",result.getUserid());
				hsession.setAttribute("userimage",result.getUserid());
				m.addAttribute("userid",result.getUserid());
				m.addAttribute("imagenum", CommonController.generateRandomNum());
			
				return "loginsuccessadmin";
			}
			else
				m.addAttribute("user",ud);
			m.addAttribute("username",result.getUserid());
			hsession.setAttribute("userlogin",result.getUserid());
			hsession.setAttribute("userimage",result.getUserid());
			m.addAttribute("userid",result.getUserid());
			m.addAttribute("imagenum", CommonController.generateRandomNum());
			List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs();
			m.addAttribute("psdata", psdata);
			return "loginsuccessuser";
		}
	}
	
        @RequestMapping("/reqLogout")
		public String logout(HttpSession hsession){
			hsession.setAttribute("userlogedin", null);
			return "redirect:/reqForLoginPage";
		}
		
        @RequestMapping("/loginCheck1")
        public String loginCheck(Principal principal, HttpSession hsession,Model m){
        	System.out.println("\n HomeController-loginCheck()");
        	System.out.println("\n name:" +principal.getName());
        	Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        	/*Authentication authentication= SecurityContextHolder.getContext().getAuthentication();*/
        	String userrole=authentication.getAuthorities().toString().substring(1,10);
        	System.out.println("\n Role:" +userrole);
        	Userdetails1 ud= userdetailsservice.getUserById(principal.getName());
        
        	//Userdetails1 result = userdetailsservice.getUserById(principal.getName());
        
        	if(userrole.equals("ROLE_USER")){
        		Customer cust=customerService.getCustomerByUserId(ud.getUserid());
        		List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs();
        	
        	m.addAttribute("psdata", psdata);
           m.addAttribute("username",cust.getCustname());
        	m.addAttribute("userid",ud.getCustomer().getCustomerid());
        	
        	m.addAttribute("imagenum",CommonController.generateRandomNum());
        	hsession.setAttribute("username",cust.getCustname());
        	hsession.setAttribute("userid",cust.getCustomerid());
        	m.addAttribute("cartsize",cust.getCart().getCartItems().size());
        	hsession.setAttribute("cartsize", cust.getCart().getCartItems().size());
        		
     
        	//hsession.setAttribute("cartsize", hsession.getAttribute("cartsize"));
    		
        	return "loginsuccessuser";
        
         
        	}
        	
        
        	else if(userrole.equals("ROLE_ADMI")){
        		//Userdetails1 ud1= new Userdetails1();
        		m.addAttribute("username",ud.getUserid());
        		m.addAttribute("userid",ud.getUserid());
    			hsession.setAttribute("username",ud.getUserid());
    			hsession.setAttribute("userid",ud.getUserid());
    			/*hsession.setAttribute("username",ud.getUserid());
    			/*hsession.setAttribute("userid", ud.getUserid());*/
        		//m.addAttribute("user",ud);
				//m.addAttribute("username",result.getUserid());
        		/*m.addAttribute("user",principal.getName());
			hsession.setAttribute("user",principal.getName());*/
			m.addAttribute("imagenum", CommonController.generateRandomNum());
    			return "loginsuccessadmin";	
    		}
        	 return null;
        	}
        
        
        @RequestMapping("/reqSendSignupDataToDB")
    	public String addUserToDb(@ModelAttribute("customerObject")Customer customer, Model m){
    		
    		BillingAddress ba = new BillingAddress();
    		ba.setHouseno(customer.getShippingAddress().getHouseno());
    		ba.setStreet(customer.getShippingAddress().getStreet());
    		ba.setArea(customer.getShippingAddress().getArea());
    		ba.setCity(customer.getShippingAddress().getCity());
    		ba.setState(customer.getShippingAddress().getState());
    		ba.setCountry(customer.getShippingAddress().getCountry());
    		ba.setPincode(customer.getShippingAddress().getPincode());
    		customer.setBillingAddress(ba);
    		customer.setCart(new Cart());
    		String custid = customerService.addCustomer(customer);
    		
    		/*String cid = userdetailsservice.addUser(ud);*/
    		m.addAttribute("message", "1");
    		m.addAttribute("message1", "SIGNUP IS SUCCESSFULL..YOUR LOGIN-ID : " + custid);
    		/*Userdetails temp=new Userdetails();
    		m.addAttribute("userObject1",  temp);
    		m.addAttribute("userObject",  new Userdetails());*/
    		Customer cust = new Customer();			
    		ShippingAddress shippingAddress = new ShippingAddress();		
    		Userdetails1 userdetails1 = new Userdetails1();
    		
    		cust.setUserdetails1(userdetails1);
    		cust.setShippingAddress(shippingAddress);		
    		
    		m.addAttribute("customerObject",cust);	    		
    		m.addAttribute("imagenum", CommonController.generateRandomNum());
    		List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs();
    		m.addAttribute("psdata", psdata);    		
    		
    		return "index";
    	}
        
}
   
		
	



