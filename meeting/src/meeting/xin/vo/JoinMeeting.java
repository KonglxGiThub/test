package meeting.xin.vo;

public class JoinMeeting {
	int mid;
	int eid;
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public JoinMeeting(int mid,int eid){
		this.mid=mid;
		this.eid=eid;
	}
}
