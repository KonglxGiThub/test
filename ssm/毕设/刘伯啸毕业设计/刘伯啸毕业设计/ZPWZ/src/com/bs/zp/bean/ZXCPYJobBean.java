package com.bs.zp.bean;

import java.util.List;

public class ZXCPYJobBean {
	
	private Company company;
	
	private List<Job> jobList;

	/**
	 * @return the company
	 */
	public Company getCompany() {
		return company;
	}

	/**
	 * @param company the company to set
	 */
	public void setCompany(Company company) {
		this.company = company;
	}

	/**
	 * @return the jobList
	 */
	public List<Job> getJobList() {
		return jobList;
	}

	/**
	 * @param jobList the jobList to set
	 */
	public void setJobList(List<Job> jobList) {
		this.jobList = jobList;
	}

}
