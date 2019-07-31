package com.bs.xyl.bean;

public class News {
	private int id;
	private String title;
	private String text;
	private String time;
	private int type;
	private int class_id;

	public News() {

	}

	public News(int id, String title, String text, String time) {
		// super();
		this.id = id;
		this.title = title;
		this.text = text;
		this.time = time;
	}

	public News(String title, String text, String time) {
		// super();
		this.title = title;
		this.text = text;
		this.time = time;
	}

	public News(int id, String title, String text, String time, int type,
			int class_id) {
		// super();
		this.id = id;
		this.title = title;
		this.text = text;
		this.time = time;
		this.type = type;
		this.class_id = class_id;
	}

	public News(String title, String text, String time, int type, int class_id) {
		// super();
		this.title = title;
		this.text = text;
		this.time = time;
		this.type = type;
		this.class_id = class_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

}
