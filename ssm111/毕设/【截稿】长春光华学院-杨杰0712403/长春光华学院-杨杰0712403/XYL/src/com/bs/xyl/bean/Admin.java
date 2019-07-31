package com.bs.xyl.bean;

public class Admin {
	private int id;
	private String account;
	private String pwd;
	private String name;
	private int role;

	public Admin() {

	}

	public Admin(int id, String account, String pwd, String name, int role) {
		// super();
		this.id = id;
		this.account = account;
		this.pwd = pwd;
		this.name = name;
		this.role = role;
	}

	public Admin(String account, String pwd, String name, int role) {
		// super();
		this.account = account;
		this.pwd = pwd;
		this.name = name;
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

}
