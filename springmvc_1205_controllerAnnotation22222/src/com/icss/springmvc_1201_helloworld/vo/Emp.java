package com.icss.springmvc_1201_helloworld.vo;

public class Emp {
	private String name;
	private String pass;
	
	public Emp() {
		super();
	}
	public Emp(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
