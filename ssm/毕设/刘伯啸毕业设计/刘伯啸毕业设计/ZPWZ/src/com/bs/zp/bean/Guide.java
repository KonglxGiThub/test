package com.bs.zp.bean;

public class Guide {
	/* 主键*/
	private int id;
	/* 题目 */
	private String title;
	/*  发布时间 */
	private String time;
	/*  来源  */
	private String source;
	/*  正文  */
	private String text;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the 题目
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param 题目 the 题目 to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the 发布时间
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param 发布时间 the 发布时间 to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return the 来源
	 */
	public String getSource() {
		return source;
	}
	/**
	 * @param 来源 the 来源 to set
	 */
	public void setSource(String source) {
		this.source = source;
	}
	/**
	 * @return the 正文
	 */
	public String getText() {
		return text;
	}
	/**
	 * @param 正文 the 正文 to set
	 */
	public void setText(String text) {
		this.text = text;
	}
	
}
