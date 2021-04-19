package com.home.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class home_controller {
	
	

	@RequestMapping("/home")
	public String home_page_controller() {
		
		return "home";
		
	}
	
	@RequestMapping("/login")
	public String login_page_controller() {
		
		
		
		
		return "Login";
	}
	
	@RequestMapping("/signup")
	public String signup_page_controller() {
	
		
		return "signup";
	}
	
	@RequestMapping("/Menu")
	public String menu_page_controller() {
		return "Menu";
	}
	@RequestMapping("/verify")
	public String verify_page_controller(HttpServletRequest request , Model model ) {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		model.addAttribute("username",username);
		model.addAttribute("password", password);
		
		return "verify";
	}
	@RequestMapping("/adding_data")
	public String adding_data_controller(HttpServletRequest request , Model model ) {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String mobileno = request.getParameter("mobileno");
	
		
		model.addAttribute("email",email);
		model.addAttribute("password", password);
		model.addAttribute("username", username);
		model.addAttribute("address", address);
		model.addAttribute("mobileno", mobileno);
	
		return "adding_data";
		
	}
	
	@RequestMapping("/orders")
	public String orders_controller(HttpServletRequest request, Model model, HttpSession session) {
	
	

		return "orders";
		
		
	}
	@RequestMapping("/addingorder")
	public String addingorder_controller(HttpServletRequest request, Model model) {
	
		
		  String coffe_no = request.getParameter("coffeno");
		  String Latte_no = request.getParameter("Latteno"); 
		  String Cappucino_no =request.getParameter("Cappucinono");
		  String Mocha_no = request.getParameter("Mochano"); 
		  String Espresso_no = request.getParameter("Espressono"); 
		  String Corto_no = request.getParameter("Cortono"); 
		  int grandtotal = 0; 
		  grandtotal = (7)*Integer.parseInt(coffe_no)+ (10)*Integer.parseInt(Latte_no)+(11)*Integer.parseInt(Cappucino_no)+(9)*Integer.parseInt(Mocha_no)+(12)*Integer.parseInt(Espresso_no)+10*Integer.parseInt(Corto_no);
		 
		  model.addAttribute("coffeno",coffe_no);
		  model.addAttribute("Latteno",Latte_no);
		  model.addAttribute("Cappucinono",Cappucino_no);
		  model.addAttribute("Mochano",Mocha_no);
		  model.addAttribute("Espressono",Espresso_no);
		 model.addAttribute("Cortono",Corto_no);
		 model.addAttribute("grandtotal",String.valueOf(grandtotal));
		
		return "addingorder";
	}
	
	@RequestMapping("/userRecord")
	public String userRecord_page_controller() {
		return "userRecord";
	}
	
	@RequestMapping("/logout")
	public String logout_page_controller() {
		return "logout";
	}
	
	@RequestMapping("/about")
	public String about_page_controller() {
		return "About";
	}
}
