package com.chinasofti.web1026.model;

public class DeptTable {
	String deptNo;
	String dName;
	String city; 
	public DeptTable(String deptNo,String dName){
		this.deptNo=deptNo;
		this.dName = dName;
		//this.city = city;
	}
	public DeptTable(String deptNo,String dName,String city){
		this.deptNo=deptNo;
		this.dName = dName;
		this.city = city;
	}
	public String getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(String deptNo) {
		this.deptNo = deptNo;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "姓名是:"+dName+"密码是:"+deptNo+"城市是:"+city;
	}
	
	
}
