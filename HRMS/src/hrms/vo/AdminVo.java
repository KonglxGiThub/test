package hrms.vo;

public class AdminVo {
	private String adminName;
	private String adminPwd;
	private String adminLevel;
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getAdminLevel() {
		return adminLevel;
	}
	public void setAdminLevel(String adminLevel) {
		this.adminLevel = adminLevel;
	}
	public AdminVo() {

	}
	public AdminVo( String adminName,String adminPwd, String adminLevel) {
		
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminLevel = adminLevel;
	}
	
	
	
	
	
	
}
