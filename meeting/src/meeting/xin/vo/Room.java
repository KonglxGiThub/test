package meeting.xin.vo;

public class Room {
	int rid;
	int rnum;
	String rname;
	int rstatus;
	String rnnote;
	int rpeople;
	public Room(int rid,String rname,int rpeople){
		this.rid=rid;
		this.rname=rname;
		this.rpeople=rpeople;
		
		
	}

	public Room(int rnum,String rname,int rpeople,int rstatus,String rnote){
		this.rnum=rnum;
		this.rname=rname;
		this.rpeople=rpeople;
		this.rstatus=rstatus;
		this.rnnote=rnote;
	}
	public Room(int rid,int rnum,String rname,int rstatus,String rnote,int rpeople){
		this.rnum=rnum;
		this.rname=rname;
		this.rpeople=rpeople;
		this.rstatus=rstatus;
		this.rnnote=rnote;
		this.rid=rid;
	}
	public Room(int rnum,String rname,int rpeople,int rstatus){
		this.rnum=rnum;
		this.rname=rname;
		this.rpeople=rpeople;
		this.rstatus=rstatus;
	}

	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getRstatus() {
		return rstatus;
	}
	public void setRstatus(int rstatus) {
		this.rstatus = rstatus;
	}
	public String getRnnote() {
		return rnnote;
	}
	public void setRnnote(String rnnote) {
		this.rnnote = rnnote;
	}
	public int getRpeople() {
		return rpeople;
	}
	public void setRpeople(int rpeople) {
		this.rpeople = rpeople;
	}
	
}
