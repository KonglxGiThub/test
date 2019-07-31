package com.bs.xyl.bean;

public class Message extends Student {
	private int id;
	private String title;
	private String text;
	private String time;
	private int state;
	private String rtext;
	private String rtime;
	private int stu_id;
	private int class_id;

	public Message() {

	}

	public Message(int id, String title, String text, String time, int state,
			String rtext, String rtime, int stu_id, int class_id) {
		//super();
		this.id = id;
		this.title = title;
		this.text = text;
		this.time = time;
		this.state = state;
		this.rtext = rtext;
		this.rtime = rtime;
		this.stu_id = stu_id;
		this.class_id = class_id;
	}
	
	public Message(String title, String text, String time, int state,
			String rtext, String rtime, int stu_id, int class_id) {
		//super();
		this.title = title;
		this.text = text;
		this.time = time;
		this.state = state;
		this.rtext = rtext;
		this.rtime = rtime;
		this.stu_id = stu_id;
		this.class_id = class_id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getRtext() {
		return rtext;
	}

	public void setRtext(String rtext) {
		this.rtext = rtext;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public int getStu_id() {
		return stu_id;
	}

	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}

	public Integer getClass_id() {
		return class_id;
	}

	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}

}
