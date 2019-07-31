package com.icss.springmvc_1201_helloworld.vo;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class Emp {
	//message是固定的
//	@NotEmpty(message="name not null")
	
	//@Length(min=6,max=10,message="name 6-10")
	@Pattern(regexp = "[A-Za-z]\\w{5,9}",message="{emp.name}")
	private String name;
	
	@Range(min=10, max=40,message="10-40") 
	private String pass;
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
