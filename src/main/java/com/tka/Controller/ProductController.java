package com.tka.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.Product.Product;
import com.tka.Service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService service;

	@GetMapping("add-product")
	public String insertproductpage() {
		return "add";
	}

	@PostMapping("/insert-product")
	public String addproduct(@ModelAttribute Product product) {
		System.err.println("We are in adddproduct method");
		String msg = service.addproduct(product);
		System.out.println(product);
		System.err.println(msg);
		return "add";
	}

	@GetMapping("/display-product")
	public String displayproduct(Model model) {
		System.err.println("We are in display Product method");
		List<Product> list = service.displayproduct();
		model.addAttribute("products", list);
		System.out.println(list);
		return "display";

	}

	@GetMapping("/delete-product")
	public String deleteproduct(@RequestParam("pid") int pk) {
		System.out.println(pk);
		System.out.println("we are in delete controller method");
		String res = service.deleteproduct(pk);

		return "redirect:/display-product";
	}

	@GetMapping("/view-product")
	public String viewproduct(@RequestParam("pid") int pk, Model model) {
		Product product = service.getProduct(pk);
		model.addAttribute("p",product);
		return "update";
	}
	@GetMapping("/index-page")
	public String inde() {
		return "index";
	}
	
	 @RequestMapping("/login-page")
	    public String showLoginPage() {
	        return "login";  // This corresponds to /WEB-INF/jsp/login.jsp
	    }
	
	@PostMapping("/update-product")
	public String updateproduct(@ModelAttribute Product product) {
		String msg=service.updateproduct(product);
		return "redirect:/display-product";
	}
}
