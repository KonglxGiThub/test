package com.bs.zp.bean;

public class ResumeBean {
	
	private int rbid;
	private int cid;
	private int sid;
	private int jid;
	private String time;
	private String state;
	private String type;
	private Seeker sek;
	private Company cpy;
	private Job job;
	/**
	 * @return the job
	 */
	public Job getJob() {
		return job;
	}
	/**
	 * @param job the job to set
	 */
	public void setJob(Job job) {
		this.job = job;
	}
	/**
	 * @return the sek
	 */
	public Seeker getSek() {
		return sek;
	}
	/**
	 * @param sek the sek to set
	 */
	public void setSek(Seeker sek) {
		this.sek = sek;
	}
	/**
	 * @return the cpy
	 */
	public Company getCpy() {
		return cpy;
	}
	/**
	 * @param cpy the cpy to set
	 */
	public void setCpy(Company cpy) {
		this.cpy = cpy;
	}
	/**
	 * @return the rbid
	 */
	public int getRbid() {
		return rbid;
	}
	/**
	 * @param rbid the rbid to set
	 */
	public void setRbid(int rbid) {
		this.rbid = rbid;
	}
	/**
	 * @return the cid
	 */
	public int getCid() {
		return cid;
	}
	/**
	 * @param cid the cid to set
	 */
	public void setCid(int cid) {
		this.cid = cid;
	}
	/**
	 * @return the sid
	 */
	public int getSid() {
		return sid;
	}
	/**
	 * @param sid the sid to set
	 */
	public void setSid(int sid) {
		this.sid = sid;
	}
	/**
	 * @return the time
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the jid
	 */
	public int getJid() {
		return jid;
	}
	/**
	 * @param jid the jid to set
	 */
	public void setJid(int jid) {
		this.jid = jid;
	}
}
