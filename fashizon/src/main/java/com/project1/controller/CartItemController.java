package com.project1.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project1.model.Cart;
import com.project1.model.CartItems;
import com.project1.model.Customer;
import com.project1.model.Userdetails1;
import com.project1.model.Vw_Xmap_Ps;
import com.project1.model.XMAP_Product_Supplier;
import com.project1.service.CartItemService;
import com.project1.service.CartService;
import com.project1.service.CustomerService;
import com.project1.service.Userdetailsservice;
import com.project1.service.VwPsService;
import com.project1.service.XmapPsservice;
@Controller
public class CartItemController {
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private XmapPsservice xmapService;
	@Autowired
	private CartService cartService;	
	@Autowired
	private VwPsService vwpsservice;
	@Autowired
	private Userdetailsservice userdetailsservice;
	
	@RequestMapping("/reqAddItemToCart/{psid}")
	public String addItemToCart(@PathVariable("psid")String psid,@RequestParam("qty")int qty,Principal principal,HttpSession hsession,Model m){
		System.out.println("psid : "+psid+ " qty : " + qty);
		
		/*Autentication authentication = principal.
		UserDetails1 user= (UserDetails1)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
*/
		String userid=principal.getName();
		System.out.println(userid);
		Customer customer=customerService.getCustomerByUserId(userid);
		Cart cart=customer.getCart();
		XMAP_Product_Supplier xmapProduct = xmapService.getxmapById(psid);
		
		CartItems cartitem = new CartItems();			
		cartitem.setCart(cart);
		cartitem.setXmap_product_supplier(xmapProduct); 
		cartitem.setQuantity(qty);
		cartitem.setItemstotal(xmapProduct.getProductsupplierprice()*qty);
		
		cartItemService.addCartItem(cartitem);
		
		Customer customer1=customerService.getCustomerByUserId(userid);
		Cart cart1=customer1.getCart();
		int cartsize = cartService.getCartSize(cart1);	
		
		List<CartItems> cartitems = cart.getCartItems();
		int sum=0;
		for(CartItems critem :cartitems)
			sum+= critem.getItemstotal();
		
		cart.setGrandtotal(sum);
		cartService.updateCart(cart);
		List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs();
		m.addAttribute("psdata",psdata);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		
		Userdetails1 ud= userdetailsservice.getUserById(principal.getName());
		Customer cust=customerService.getCustomerByUserId(ud.getUserid());
		m.addAttribute("username",cust.getCustname());
		m.addAttribute("userid",cust.getCustomerid());
		
		/*m.addAttribute("username",hsession.getAttribute("userlogin"));
		m.addAttribute("userid",hsession.getAttribute("userimage"));*/
		m.addAttribute("cartsize", cartsize);
		m.addAttribute("cartmessage","Item added to cart successfully");
		
		hsession.setAttribute("cartsize", cartsize);
		System.out.println("cart size :" + cartsize);
		return "displayproductsuser";
	
}
	
	
	@RequestMapping("/reqDisplayCart")
	public String displayCart(HttpSession hsession,Model m,Principal princ){
		System.out.println(hsession.getAttribute("userid").toString());
		//Customer cust = customerService.getCustomerByCustId(hsession.getAttribute("userid").toString());
		Customer cust=customerService.getCustomerByUserId(princ.getName());
		System.out.println(cust.getCustname());
		Cart cart=cust.getCart();
		int cartsize = cartService.getCartSize(cart);	
		hsession.setAttribute("cartsize",cartsize);
		
		List<CartItems> cartitems = cart.getCartItems();	
		int sum=0;
		for(CartItems critem :cartitems){
			sum+= critem.getItemstotal();
		}
		cart.setGrandtotal(sum);
		cartService.updateCart(cart);	
		
		m.addAttribute("username",cust.getCustname());
		m.addAttribute("userid",cust.getCustomerid());
		/*m.addAttribute("username",hsession.getAttribute("userlogin"));*/
		m.addAttribute("customerid",cust.getCustomerid());
		m.addAttribute("customer",cust);
		
		m.addAttribute("userid",hsession.getAttribute("userimage"));
		m.addAttribute("cartitems", cartitems);
		m.addAttribute("cartsize",cartsize);
		m.addAttribute("grandtotal",cart.getGrandtotal());
		return "displayCartItems";
	}
	
	
	
	
	
	
	
	@RequestMapping("/reqDeleteCartItem/{cartitemid}")
	public String deleteCartItem(@PathVariable("cartitemid")String cartitemid,Principal principal ){
		cartItemService.removeCartItem(cartitemid);		
		return "redirect:/reqDisplayCart";
	}
	
	
	@RequestMapping("/reqClearCart/{customerid}")
	public String deleteAllCartItems(@PathVariable("customerid")String customerid,HttpSession hsession,Model m){
		cartItemService.removeAllCartItems(customerid);
		hsession.setAttribute("cartsize", 0);
		m.addAttribute("cartsize",hsession.getAttribute("cartsize"));
		return "redirect:/reqDisplayProductsUser";
	}
	
	
}
