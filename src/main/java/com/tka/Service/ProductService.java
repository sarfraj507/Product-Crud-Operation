package com.tka.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.Product.Product;
import com.tka.dao.ProductDao;

@Service
public class ProductService {
	@Autowired
	private ProductDao dao;

	public String addproduct(Product product) {
		String msg = dao.addproduct(product);
		return msg;
	}

	public List<Product> displayproduct() {
		List<Product> list = dao.displayproduct();
		return list;
	}

	public String deleteproduct(int pk) {
		System.out.println("we are in delete service method");
		String res = dao.deleteproduct(pk);
		return res;
	}

	public Product getProduct(int pk) {
		Product product = dao.getProduct(pk);
		return product;
	}

	public String updateproduct(Product product) {
		String msg=dao.updateproduct(product);
		return msg;
		
	}

	
	

}
