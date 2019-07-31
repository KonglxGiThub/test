package com.bs.zp.bean;

public class Seeker {
	
	/* 主鍵*/
	private int id;
	/* 登录名*/
	private String account;
	/* 密码*/
	private String pwd;
	/* 真实姓名*/
	private String name;
	/* 性别*/
	private String sex;
	/* 生日*/
	private String age;
	/* 联系地址*/
	private String addr;
	/* 联系电话*/
	private String tel;
	/* 身份证*/
	private String cardId;
	/* 政治面貌*/
	private String political;
	/* 学历*/
	private String education;
	/* 工作经验 */
	private String background;
	/* 邮箱*/
	private String email;
	/* QQ*/
	private String qq;
	/* 状态*/
	private int state;
	private String file;
	/* 自我评价*/
	private String text;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	/**
	 * @return the 状态
	 */
	public int getState() {
		return state;
	}
	/**
	 * @param 状态 the 状态 to set
	 */
	public void setState(int state) {
		this.state = state;
	}
	/**
	 * @return the 主鍵
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param 主鍵 the 主鍵 to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the 登錄名
	 */
	public String getAccount() {
		return account;
	}
	/**
	 * @param 登錄名 the 登錄名 to set
	 */
	public void setAccount(String account) {
		this.account = account;
	}
	/**
	 * @return the 密碼
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * @param 密碼 the 密碼 to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	/**
	 * @return the 真实姓名
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param 真实姓名 the 真实姓名 to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the 性别
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param 性别 the 性别 to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	/**
	 * @return the 生日
	 */
	public String getAge() {
		return age;
	}
	/**
	 * @param 生日 the 生日 to set
	 */
	public void setAge(String age) {
		this.age = age;
	}
	/**
	 * @return the 联系地址
	 */
	public String getAddr() {
		return addr;
	}
	/**
	 * @param 联系地址 the 联系地址 to set
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}
	/**
	 * @return the 电话
	 */
	public String getTel() {
		return tel;
	}
	/**
	 * @param 电话 the 电话 to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}
	/**
	 * @return the 身份证
	 */
	public String getCardId() {
		return cardId;
	}
	/**
	 * @param 身份证 the 身份证 to set
	 */
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	/**
	 * @return the 政治面貌
	 */
	public String getPolitical() {
		return political;
	}
	/**
	 * @param 政治面貌 the 政治面貌 to set
	 */
	public void setPolitical(String political) {
		this.political = political;
	}
	/**
	 * @return the 邮箱
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param 邮箱 the 邮箱 to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the QQ
	 */
	public String getQq() {
		return qq;
	}
	/**
	 * @param QQ the QQ to set
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}
	/**
	 * @return the education
	 */
	public String getEducation() {
		return education;
	}
	/**
	 * @param education the education to set
	 */
	public void setEducation(String education) {
		this.education = education;
	}
	/**
	 * @return the background
	 */
	public String getBackground() {
		return background;
	}
	/**
	 * @param background the background to set
	 */
	public void setBackground(String background) {
		this.background = background;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
}
