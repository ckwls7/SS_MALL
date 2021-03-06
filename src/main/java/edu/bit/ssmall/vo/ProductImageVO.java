package edu.bit.ssmall.vo;

public class ProductImageVO {

	private int p_number;
	private String p_name;
	private int p_price;
	private String p_brand;
	private int p_stock;
	private String p_description;
	private String p_released_date;
	private int p_amount;
	private String p_category;	
	private String i_name;
	private int i_type;
	
	
	
	@Override
	public String toString() {
		return "ProductImageVO [p_number=" + p_number + ", p_name=" + p_name + ", p_price=" + p_price + ", p_brand="
				+ p_brand + ", p_stock=" + p_stock + ", p_description=" + p_description + ", p_released_date="
				+ p_released_date + ", p_amount=" + p_amount + ", p_category=" + p_category + ", i_name=" + i_name
				+ ", i_type=" + i_type + "]";
	}
	public int getI_type() {
		return i_type;
	}
	public void setI_type(int i_type) {
		this.i_type = i_type;
	}
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_brand() {
		return p_brand;
	}
	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}
	public int getP_stock() {
		return p_stock;
	}
	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}
	public String getP_description() {
		return p_description;
	}
	public void setP_description(String p_description) {
		this.p_description = p_description;
	}
	public String getP_released_date() {
		return p_released_date;
	}
	public void setP_released_date(String p_released_date) {
		this.p_released_date = p_released_date;
	}
	public int getP_amount() {
		return p_amount;
	}
	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

}
