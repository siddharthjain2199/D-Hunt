package com.Eshop;

public class Product {
	private static String product_name;
	private static String product_price;
	private static String product_desc;
	private static String product_image;

	public Products(String n, String d, String i,String p){
		product_name = n;
		product_price = p;
		product_desc = d;
		product_image = i;
	}

	public String getName(){
	    return product_name;
	}

	public String getPrice(){
	    return product_price;
	}

	public String getImage(){
	    return product_image;
	}

	public String getDesc(){
	    return product_desc;
	}
}
