package com.simplilearn.ecommerce.entity;

import java.sql.Date;

public class Product {
	
	
	private int id;
	private String name;
	private double price;
	private Date  date;
	
	public Product() {
		
		
	}
	
	
	public Product(int id, String name, double price, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}


	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", date=" + date + "]";
	}
	
	
	
	
}
