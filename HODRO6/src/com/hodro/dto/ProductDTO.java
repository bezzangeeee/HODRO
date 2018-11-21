package com.hodro.dto;

import java.sql.Date;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private int p_price;
	private int purchasecnt;
	private String p_img;
	private String p_sum;
	private String p_ex;
	private Date p_indate;
	
	public ProductDTO() {
		super();
	}
	
	public ProductDTO(String p_code, String p_name, int p_price, int purchasecnt, String p_img, String p_sum,
			String p_ex, Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.purchasecnt = purchasecnt;
		this.p_img = p_img;
		this.p_sum = p_sum;
		this.p_ex = p_ex;
		this.p_indate = p_indate;
	}

	public ProductDTO(String p_code, String p_name, int p_price, int purchasecnt, String p_img, Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.purchasecnt = purchasecnt;
		this.p_img = p_img;
		this.p_indate = p_indate;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
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

	public int getPurchasecnt() {
		return purchasecnt;
	}

	public void setPurchasecnt(int purchasecnt) {
		this.purchasecnt = purchasecnt;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public Date getP_indate() {
		return p_indate;
	}

	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}

	public String getP_sum() {
		return p_sum;
	}

	public void setP_sum(String p_sum) {
		this.p_sum = p_sum;
	}

	public String getP_ex() {
		return p_ex;
	}

	public void setP_ex(String p_ex) {
		this.p_ex = p_ex;
	}

	@Override
	public String toString() {
		return "ProductDTO [p_code=" + p_code + ", p_name=" + p_name + ", p_price=" + p_price + ", purchasecnt="
				+ purchasecnt + ", p_img=" + p_img + ", p_sum=" + p_sum + ", p_ex=" + p_ex + ", p_indate=" + p_indate
				+ "]";
	}

	
	
	

	
	
	
}
