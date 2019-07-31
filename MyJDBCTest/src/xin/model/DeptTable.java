package xin.model;

public class DeptTable {
	private int deptNo;
	private String dName;
	private String city;
	public DeptTable(){}
	public DeptTable(int deptNo,String dName,String city){
		this.deptNo = deptNo;
		this.dName = dName;
		this.city = city;
	}
	public DeptTable(String dName,String city){
		this.dName = dName;
		this.city = city;
	}
	
	/**
	 * @return the deptNo
	 */
	public int getDeptNo() {
		return deptNo;
	}
	/**
	 * @param deptNo the deptNo to set
	 */
	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}
	/**
	 * @return the dName
	 */
	public String getdName() {
		return dName;
	}
	/**
	 * @param dName the dName to set
	 */
	public void setdName(String dName) {
		this.dName = dName;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "部门号是："+deptNo+"	部门名是："+dName+"	部门所在地是："+city;
	}
	

}
