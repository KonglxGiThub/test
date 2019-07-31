package com.bs.xyl.bean;

public class Banji {
	private int id;
	private String grade;
	private String name;

	public Banji() {

	}

	public Banji(int id, String grade, String name) {
		// super();
		this.id = id;
		this.grade = grade;
		this.name = name;
	}

	public Banji(String grade, String name) {
		// super();
		this.grade = grade;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
