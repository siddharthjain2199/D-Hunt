package com.Eshop;

public class Item {
	private Product1 product;
	private int product_quantity;

	public Item() {
	}

	public Item(Product1 product, int product_quantity) {
		this.product = product;
		this.product_quantity = product_quantity;
	}

	public Product1 getProduct() {
		return product;
	}

	public void setProduct(Product1 product) {
		this.product = product;
	}

	public int getQuantity() {
		return product_quantity;
	}

	public void setQuantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
}
