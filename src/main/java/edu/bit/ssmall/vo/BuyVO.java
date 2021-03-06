package edu.bit.ssmall.vo;

import java.sql.Date;

public class BuyVO {

	private int b_number; //구매번호
	private int m_number; //회원번호
	private int p_number; //상품번호
	private Date b_date; //구매일자	
	private int b_amount; //구매수량
	private String b_status; //상태
	private int b_total; // 구매총가격
	private String imp_uid; //아임포트 결제고유번호
	private String b_memo; //배송메시지
	private String b_name; //수령인
	private String b_phonenum;//수령인 전화번호
	private String b_addr;//수령받을 주소
	private String p_price;//상품가격
	private String p_image;//상품이미지
	private String p_brand; //브랜드
	private String p_name; //상품명
	private String b_code;
	
	
	
	public String getB_code() {
		return b_code;
	}
	public void setB_code(String b_code) {
		this.b_code = b_code;
	}
	public int getB_number() {
		return b_number;
	}
	public void setB_number(int b_number) {
		this.b_number = b_number;
	}
	public int getM_number() {
		return m_number;
	}
	public void setM_number(int m_number) {
		this.m_number = m_number;
	}
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public int getB_amount() {
		return b_amount;
	}
	public void setB_amount(int b_amount) {
		this.b_amount = b_amount;
	}
	public String getB_status() {
		return b_status;
	}
	public void setB_status(String b_status) {
		this.b_status = b_status;
	}
	public int getB_total() {
		return b_total;
	}
	public void setB_total(int b_total) {
		this.b_total = b_total;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getB_memo() {
		return b_memo;
	}
	public void setB_memo(String b_memo) {
		this.b_memo = b_memo;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_phonenum() {
		return b_phonenum;
	}
	public void setB_phonenum(String b_phonenum) {
		this.b_phonenum = b_phonenum;
	}
	public String getB_addr() {
		return b_addr;
	}
	public void setB_addr(String b_addr) {
		this.b_addr = b_addr;
	}
	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public String getP_brand() {
		return p_brand;
	}
	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	@Override
	public String toString() {
		return "BuyVO [b_number=" + b_number + ", m_number=" + m_number + ", p_number=" + p_number + ", b_date="
				+ b_date + ", b_amount=" + b_amount + ", b_status=" + b_status + ", b_total=" + b_total + ", imp_uid="
				+ imp_uid + ", b_memo=" + b_memo + ", b_name=" + b_name + ", b_phonenum=" + b_phonenum + ", b_addr="
				+ b_addr + ", p_price=" + p_price + ", p_image=" + p_image + ", p_brand=" + p_brand + ", p_name="
				+ p_name + ", b_code=" + b_code + "]";
	}
	
	
	
	
}
