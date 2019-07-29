package meeting.xin.vo;

public class EMP {
	int eid;
	String ename;
	String elname;
	String epass;
	String ephone;
	String email;
	int did;
	int estatus;
	int emanage;
	int mid;
	int emp;
	public int getEmp() {
		return emp;
	}
	public void setEmp(int emp) {
		this.emp = emp;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public EMP(){}
	public EMP(int eid){
		this.eid=eid;
	}
	public EMP(String elname,String epass){
		this.elname=elname;
		this.epass=epass;
	}
	public EMP(String ename,String elname,String ephone,String email){
		this.elname=elname;
		this.ename=ename;
		this.ephone = ephone;
		this.email=email;
	}
	public EMP(String ename,String elname,String epass,String ephone,String email,int did){
		this.ename=ename;
		this.elname=elname;
		this.epass=epass;
		this.ephone=ephone;
		this.email=email;
		this.did=did;	
	}
	public EMP(	int eid,String ename,String elname,String epass,String ephone,String email,
	int estatus,int emanage,int did){
		this.eid=eid;
		this.ename=ename;
		this.elname=elname;
		this.epass=epass;
		this.ephone=ephone;
		this.email=email;
		this.did=did;
		this.estatus=estatus;
		this.emanage=emanage;
		
	}
	public EMP(	int eid,String ename,String elname,String epass,String ephone,String email,
	int estatus,int emanage,int did,int mid){
		this.eid=eid;
		this.ename=ename;
		this.elname=elname;
		this.epass=epass;
		this.ephone=ephone;
		this.email=email;
		this.did=did;
		this.estatus=estatus;
		this.emanage=emanage;
		this.mid=mid;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getElname() {
		return elname;
	}
	public void setElname(String elname) {
		this.elname = elname;
	}
	public String getEpass() {
		return epass;
	}
	public void setEpass(String epass) {
		this.epass = epass;
	}
	public String getEphone() {
		return ephone;
	}
	public void setEphone(String ephone) {
		this.ephone = ephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getEstatus() {
		return estatus;
	}
	public void setEstatus(int estatus) {
		this.estatus = estatus;
	}
	public int getEmanage() {
		return emanage;
	}
	public void setEmanage(int emanage) {
		this.emanage = emanage;
	}
	

}
