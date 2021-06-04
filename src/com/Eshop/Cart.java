package com.Eshop;

public class Cart {
	String product_id;
	String NOI;
	String product_name;
	String product_image;
	String product_price;
	String product_desc;
	int products_total_price;
	
	public String getProductId()
	{
	return product_id;
	}
	  
	public void setProductId(String product_id)
	{
	this.product_id = product_id;
	  
	}
	
	public String getProductName()
	{
	return product_name;
	}
	public void setProductName(String product_name)
	{
	this.product_name = product_name;
	  
	}
	

	public String getProductPrice()
	{
	return product_price;
	}
	public void setProductPrice(String product_price)
	{
	this.product_price = product_price;  
	}
	

	public String getProductImage()
	{
	return product_image;
	}
	public void setProductImage(String product_image)
	{
	this.product_image = product_image;
	  
	}
	

	public String getProductDesc()
	{
	return product_desc;
	}
	public void setProductDesc(String product_desc)
	{
	this.product_desc = product_desc;
	  
	}
	
	public String getNOI()
	{
	return NOI;
	}
	  
	public void setNOI(String NOI)
	{
	this.NOI = NOI;
	  
	}
	public int getProductsTotalPrice()
	{
	return products_total_price;
	}
	public void setProductsTotalPrice(int products_total_price)
	{
	this.products_total_price = products_total_price;
	}
	
}
