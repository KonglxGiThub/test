package hrms.vo;

public class DepartmentsVo {
	private int departmentId;
	private String departmentName;
	private String locationName;
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public DepartmentsVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DepartmentsVo(int departmentId) {
		super();
		this.departmentId = departmentId;
		}

	public DepartmentsVo(int departmentId, String departmentName,
			String locationName) {
		super();
		this.departmentId = departmentId;
		this.departmentName = departmentName;
		this.locationName = locationName;
	}
	@Override
	public String toString() {
		return "Departments [departmentId=" + departmentId
				+ ", departmentName=" + departmentName + ", locationName="
				+ locationName + "]";
	}
	
	

}
