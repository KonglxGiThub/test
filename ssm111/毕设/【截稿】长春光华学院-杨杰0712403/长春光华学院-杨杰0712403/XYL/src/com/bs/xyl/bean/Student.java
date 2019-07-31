package com.bs.xyl.bean;

public class Student {
	private Integer id;
	private String stu_no;
	private String pwd;
	private String name;
	private String tel;
	private String sex;
	private String birthday;
	private String qq;
	private String email;
	private String img;
	private String nickname;
	private Integer state;
	private Integer class_id;
	private String class_grade;
	private String class_name;

	public Student() {

	}

	public Student(Integer id, String stu_no, String pwd, String name, String tel,
			String sex, String birthday, String qq, String email, String img,
			String nickname, Integer state, Integer class_id, String class_grade,
			String class_name) {
		// super();
		this.id = id;
		this.stu_no = stu_no;
		this.pwd = pwd;
		this.name = name;
		this.tel = tel;
		this.sex = sex;
		this.birthday = birthday;
		this.qq = qq;
		this.email = email;
		this.img = img;
		this.nickname = nickname;
		this.state = state;
		this.class_id = class_id;
		this.class_grade = class_grade;
		this.class_name = class_name;
	}

	public Student(String stu_no, String pwd, String name, String tel,
			String sex, String birthday, String qq, String email, String img,
			String nickname, Integer state, Integer class_id) {
		// super();
		this.stu_no = stu_no;
		this.pwd = pwd;
		this.name = name;
		this.tel = tel;
		this.sex = sex;
		this.birthday = birthday;
		this.qq = qq;
		this.email = email;
		this.img = img;
		this.nickname = nickname;
		this.state = state;
		this.class_id = class_id;
		this.class_grade = class_grade;
		this.class_name = class_name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStu_no() {
		return stu_no;
	}

	public void setStu_no(String stu_no) {
		this.stu_no = stu_no;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getClass_id() {
		return class_id;
	}

	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}

	public String getClass_grade() {
		return class_grade;
	}

	public void setClass_grade(String class_grade) {
		this.class_grade = class_grade;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

}
