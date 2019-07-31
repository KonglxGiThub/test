package com.etc.admin.models;


public class CarUser {
    private Integer loginid;

    private String password;

    private Integer age;

    private String sex;

    private String type;

    private String username;
    
    public CarUser() {
	
	}
    public CarUser(Integer loginid) {
		super();
		this.loginid = loginid;
	
	}
    public CarUser(Integer loginid, String password) {
		super();
		this.loginid = loginid;
		this.password = password;
	}
    
    public CarUser(Integer loginid, String password, Integer age, String sex, String type, String username) {
		super();
		this.loginid = loginid;
		this.password = password;
		this.age = age;
		this.sex = sex;
		this.type = type;
		this.username = username;
	}
    
    
    
    
    

	public Integer getLoginid() {
        return loginid;
    }

    public void setLoginid(Integer loginid) {
        this.loginid = loginid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }
}