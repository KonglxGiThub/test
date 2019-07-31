package hrms.vo;

public class JobVo {
	private String jobid;
	private String jobtitle;
	private int minsalary;
	private int maxsalary;
	public String getJobid() {
		return jobid;
	}
	public void setJobid(String jobid) {
		this.jobid = jobid;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public int getMinsalary() {
		return minsalary;
	}
	public void setMinsalary(int minsalary) {
		this.minsalary = minsalary;
	}
	public int getMaxsalary() {
		return maxsalary;
	}
	public void setMaxsalary(int maxsalary) {
		this.maxsalary = maxsalary;
	}
	public JobVo(String jobid, String jobtitle, int minsalary, int maxsalary) {
		super();
		this.jobid = jobid;
		this.jobtitle = jobtitle;
		this.minsalary = minsalary;
		this.maxsalary = maxsalary;
	}
	public JobVo(String jobid) {
		super();
		this.jobid = jobid;
	}
	public JobVo() {

	}
	
}
