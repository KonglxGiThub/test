package com.bs.zp.bean;

public class WorkBean {
	
	/* 职位Beasn */
	private Job job;
	/* 类别Beasn */
	private Position pos;
	/* 职位状态*/
	private int wState;
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
	 * @return the pos
	 */
	public Position getPos() {
		return pos;
	}
	/**
	 * @param pos the pos to set
	 */
	public void setPos(Position pos) {
		this.pos = pos;
	}
	/**
	 * @return the wState
	 */
	public int getWState() {
		return wState;
	}
	/**
	 * @param state the wState to set
	 */
	public void setWState(int state) {
		wState = state;
	}
	
}
