package meeting.xin.vo;

public class Dept {
	int did;
	String dname;
	public Dept(int did,String dname){
		this.did=did;
		this.dname=dname;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
}
