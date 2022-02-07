package com.hand.ssm.dto;

public class User {
	private String user_id;
	private String user_pwd;
	private String name_;
	private String phone;
	private String add_;
	private String sex;
	private String agreement;
	private String aboutus;
	private String wechatimg;

	public String getWechatimg() {
		return wechatimg;
	}

	public void setWechatimg(String wechatimg) {
		this.wechatimg = wechatimg;
	}

	public String getAboutus() {
		return aboutus;
	}

	public User() {
	}

	public User(String name_, String phone, String add_, String sex) {
		this.name_ = name_;
		this.phone = phone;
		this.add_ = add_;
		this.sex = sex;
	}

	public User(String user_id, String user_pwd, String name_, String phone, String add_, String sex, String agreement) {
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.name_ = name_;
		this.phone = phone;
		this.add_ = add_;
		this.sex = sex;
		this.agreement = agreement;
	}

	public void setAboutus(String aboutus) {
		this.aboutus = aboutus;
	}

	public String getAgreement() {
		return agreement;
	}

	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName_() {
		return name_;
	}

	public void setName_(String name_) {
		this.name_ = name_;
	}

	public String getAdd_() {
		return add_;
	}

	public void setAdd_(String add_) {
		this.add_ = add_;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	

}
