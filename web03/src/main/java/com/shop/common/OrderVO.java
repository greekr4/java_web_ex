package com.shop.common;

public class OrderVO {
	private int order_seq;
	private int order_state;
	private int order_pay_state;
	private int order_no;
	private String delivery_user_name;
	private String delivery_cellphone;
	private String delivery_zip_code;
	private String delivery_address;
	private String delivery_address_details;
	private String order_email;
	private String user_id;
	private int gqty;
	private int gtotal;
	private String regdate;
	
	private int order_line_seq;
	private int order_line_no;
	private String gcode;
	private String gname;
	
	
	public int getOrder_seq() {
		return order_seq;
	}
	public void setOrder_seq(int order_seq) {
		this.order_seq = order_seq;
	}
	public int getOrder_state() {
		return order_state;
	}
	public void setOrder_state(int order_state) {
		this.order_state = order_state;
	}
	public int getOrder_pay_state() {
		return order_pay_state;
	}
	public void setOrder_pay_state(int order_pay_state) {
		this.order_pay_state = order_pay_state;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getDelivery_user_name() {
		return delivery_user_name;
	}
	public void setDelivery_user_name(String delivery_user_name) {
		this.delivery_user_name = delivery_user_name;
	}
	public String getDelivery_cellphone() {
		return delivery_cellphone;
	}
	public void setDelivery_cellphone(String delivery_user_cellphone) {
		this.delivery_cellphone = delivery_user_cellphone;
	}
	
	public String getOrder_email() {
		return order_email;
	}
	public void setOrder_email(String order_email) {
		this.order_email = order_email;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getGqty() {
		return gqty;
	}
	public void setGqty(int gqty) {
		this.gqty = gqty;
	}
	public int getGtotal() {
		return gtotal;
	}
	public void setGtotal(int gtotal) {
		this.gtotal = gtotal;
	}
	public int getOrder_line_seq() {
		return order_line_seq;
	}
	public void setOrder_line_seq(int order_line_seq) {
		this.order_line_seq = order_line_seq;
	}
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public int getOrder_line_no() {
		return order_line_no;
	}
	public void setOrder_line_no(int order_line_no) {
		this.order_line_no = order_line_no;
	}
	public String getDelivery_zip_code() {
		return delivery_zip_code;
	}
	public void setDelivery_zip_code(String delivery_zip_code) {
		this.delivery_zip_code = delivery_zip_code;
	}
	public String getDelivery_address() {
		return delivery_address;
	}
	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
	public String getDelivery_address_details() {
		return delivery_address_details;
	}
	public void setDelivery_address_details(String delivery_address_details) {
		this.delivery_address_details = delivery_address_details;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	



}
