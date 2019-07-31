package bkm.xin.vo;

public class BKM {
	int bid;
	String bname;
	String bstatus;
	public BKM(int bid,String bname,String bstatus){
		this.bid = bid;
		this.bname = bname;
		this.bstatus = bstatus;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBstatus() {
		return bstatus;
	}
	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}
	

}
