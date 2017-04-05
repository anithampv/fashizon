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

import com.project1.model.Customer;
import com.project1.model.CustomerOrder;
import com.project1.model.ProductReview;
import com.project1.service.CustomerOrderService;
import com.project1.service.CustomerService;

@Controller
public class CustomerOrderController {
	@Autowired	
	private CustomerService customerService;
	
	@Autowired
	private CustomerOrderService customerOrderService;

	
		@RequestMapping("/order/{cartId}")
		public String displayCheckOut(@PathVariable String cartId){
			System.out.println("\nCartid in checkout : " + cartId);
			return "redirect:/checkout?cartId="+cartId;
		}
		
		@RequestMapping("/reqDisplayOrderHistory")
		public String displayOrderHistory(@RequestParam("uid")String userid, Model m,HttpSession hsession){
			Customer cust = customerService.getCustomerByUserId(userid);
			List <CustomerOrder> orders = customerOrderService.custOrders(cust.getCustomerid());                                 //custOrders(cust.getCustomerid())
			System.out.print("\nOrders : " + orders);
			//System.out.print("\nOrderItems : " + orders.get(0).getCustomerOrdersHistory());
			//System.out.print("\nOrderItems : " + orders.get(1).getCustomerOrdersHistory());
			
			m.addAttribute("orders",orders);
			return "displayOrders";
		}
		
		@RequestMapping("/reqAddProductRating/{productid}")
		public String rateProduct(@PathVariable String productid, @RequestParam("rating") int rating,HttpSession hsession){
			ProductReview prev = new ProductReview();
			prev.setCustomerid(customerService.getCustomerByUserId(hsession.getAttribute("userid").toString()).getCustomerid());
			prev.setCustomerorderhistoryid("na");
			prev.setRating(rating);
			prev.setProductid(productid);
			prev.setComments("ok");
			customerOrderService.addProductReview(prev);
			return null;
		}
		
		
		
		
		
		
}

