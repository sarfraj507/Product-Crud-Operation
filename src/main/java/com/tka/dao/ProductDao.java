package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.Product.Product;

@Repository
public class ProductDao {
	@Autowired
	SessionFactory sessionfactory;

	public String addproduct(Product product) {
		Session session = null;
		Transaction tx = null;
		try {
			// Open a new session
			session = sessionfactory.openSession();

			// Begin the transaction
			tx = session.beginTransaction();

			// Save the product
			session.save(product);

			// Commit the transaction
			tx.commit();

			// Return success message
			return "Product added successfully";
		} catch (Exception e) {
			// Rollback transaction in case of exception
			if (tx != null) {
				tx.rollback();
			}

			// Print stack trace for debugging
			e.printStackTrace();

			// Return error message
			return "Something went wrong";
		} finally {
			// Close the session
			if (session != null) {
				session.close();
			}
		}
	}

	public List<Product> displayproduct() {
		List<Product> list = null;
		try {
			Session session = sessionfactory.openSession();
			Criteria criteria = session.createCriteria(Product.class);

			list = criteria.list();

			return list;

		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Soething went wrong";
			return list;

		}

	}

	public Product getProduct(int pk) {
		Product product = null;
		try {
			Session session = sessionfactory.openSession();
			product = session.get(Product.class, pk);

//			System.out.println(product);
			return product;

		} catch (Exception e) {
			e.printStackTrace();

			return product;

		}

	}

	public String deleteproduct(int pk) {
		Product product = null;
		System.out.println("we are in delete dao method");

		try {
			Session session = sessionfactory.openSession();
			Transaction tx = session.beginTransaction();
			product = session.get(Product.class, pk);
			session.delete(product);
			tx.commit();
			String msg = "Product deleted successfully";
			return msg;

		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Soething went wrong";
			return msg;

		}

	}

	public String updateproduct(Product product) {
//		Product product = null;
		try {
			Session session = sessionfactory.openSession();
			Transaction tx = session.beginTransaction();
			System.out.println("product is in update mode");
			session.saveOrUpdate(product);
			tx.commit();
			String msg = "product updated Succesfully";
			System.out.println("product updated successfully");
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			return "somethimg went wrong";
		}

	}
}
