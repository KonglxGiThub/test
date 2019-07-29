package meeting.xin.vo;

import java.sql.Timestamp;

public class Meeting {
	int mid;
	String mname;
	int mpeople;
	Timestamp mstart;
	Timestamp mend;
	Timestamp mtime;
	String mnote;
	int mstatus;
	String mreason;
	String rname;
	String ename;
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getMstatus() {
		return mstatus;
	}
	public void setMstatus(int mstatus) {
		this.mstatus = mstatus;
	}
	public String getMreason() {
		return mreason;
	}
	public void setMreason(String mreason) {
		this.mreason = mreason;
	}
	public String getMnote() {
		return mnote;
	}
	public void setMnote(String mnote) {
		this.mnote = mnote;
	}
	int rid;
	int eid;
	public Meeting(int mid,String mname,int mpeople,Timestamp mstart,Timestamp mend,String mnote,
			Timestamp mtime,int rid,int eid,int mstatus,String mreason,String rname,String ename ){
		this.mid=mid;
		this.mname=mname;
		this.mpeople=mpeople;
		this.mstart=mstart;
		this.mend=mend;
		this.mnote=mnote;
		this.mtime=mtime;
		this.rid=rid;
		this.eid=eid;
		this.mstatus=mstatus;
		this.mreason=mreason;
		this.rname=rname;
		this.ename=ename;
	
	}
	public Meeting(int mid,String mname,int mpeople,Timestamp mstart,Timestamp mend,String mnote,
			Timestamp mtime,int rid,int eid,int mstatus,String mreason,String rname){
		this.mid=mid;
		this.mname=mname;
		this.mpeople=mpeople;
		this.mstart=mstart;
		this.mend=mend;
		this.mnote=mnote;
		this.mtime=mtime;
		this.rid=rid;
		this.eid=eid;
		this.mstatus=mstatus;
		this.mreason=mreason;
		this.rname=rname;
		
	}
	public Meeting(int mid,String mname,int mpeople,Timestamp mstart,Timestamp mend,String mnote,
			Timestamp mtime,int rid,int eid,int mstatus,String mreason){
		this.mid=mid;
		this.mname=mname;
		this.mpeople=mpeople;
		this.mstart=mstart;
		this.mend=mend;
		this.mnote=mnote;
		this.mtime=mtime;
		this.rid=rid;
		this.eid=eid;
		this.mstatus=mstatus;
		this.mreason=mreason;	
	}
	public Meeting(String mname,int mpeople,Timestamp mstart,Timestamp mend,String mnote,int rid,int eid){
		
		this.mname=mname;
		this.mpeople=mpeople;
		this.mstart=mstart;
		this.mend=mend;
		this.mnote=mnote;
		this.rid=rid;
		this.eid=eid;

	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public int getMpeople() {
		return mpeople;
	}
	public void setMpeople(int mpeople) {
		this.mpeople = mpeople;
	}
	public Timestamp getMstart() {
		return mstart;
	}
	public void setMstart(Timestamp mstart) {
		this.mstart = mstart;
	}
	public Timestamp getMend() {
		return mend;
	}
	public void setMend(Timestamp mend) {
		this.mend = mend;
	}
	public Timestamp getMtime() {
		return mtime;
	}
	public void setMtime(Timestamp mtime) {
		this.mtime = mtime;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	
}
