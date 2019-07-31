package vo;

import dao.DepartmentsDao;

public class Depart {
	private int departmentId;
	private String departmentName;
	private int manager_id;
	private int location_id;
	/**
	 * @return the departmentId
	 */
	public int getDepartmentId() {
		return departmentId;
	}
	/**
	 * @param departmentId the departmentId to set
	 */
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	/**
	 * @return the departmentName
	 */
	public String getDepartmentName() {
		return departmentName;
	}
	/**
	 * @param departmentName the departmentName to set
	 */
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	/**
	 * @return the manager_id
	 */
	public int getManager_id() {
		return manager_id;
	}
	/**
	 * @param manager_id the manager_id to set
	 */
	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}
	/**
	 * @return the location_id
	 */
	public int getLocation_id() {
		return location_id;
	}
	/**
	 * @param location_id the location_id to set
	 */
	public void setLocation_id(int location_id) {
		this.location_id = location_id;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return departmentName+departmentId+location_id+manager_id;
		//return getDepartmentId()+getDepartmentName()+getLocation_id()+getManager_id();
	}
	
	
}
