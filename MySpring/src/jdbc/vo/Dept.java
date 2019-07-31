package jdbc.vo;

public class Dept {
	private int deptno;
	private String dname;
	private String loc;
	
	
	public Dept(int deptno) {
		
		this.deptno = deptno;

	}
	public Dept(int deptno, String dname, String loc) {
	
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}
	public Dept() {

	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return deptno+dname+loc;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
