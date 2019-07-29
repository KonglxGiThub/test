package meeting.xin.service;

import java.util.ArrayList;

import meeting.xin.dao.MeetingDao;
import meeting.xin.vo.EMP;
import meeting.xin.vo.Meeting;

public class MeetingService {
	/**
	 * 预定会议，添加登录zhe预定的会议
	 * */
	public boolean addMeeting(Meeting meeting){
		MeetingDao dao =new MeetingDao();
		return dao.addMeeting(meeting);
	}
	/**
	 * 个人中心我的会议，根据登录名的与会人员表查询，我可以参加被人预定的会议
	 * */
	public ArrayList<Meeting> ShowMyMeeting(int eid){
		MeetingDao dao =new MeetingDao();
		return dao.ShowMyMeeting(eid);
	}
	/**
	 * 个人中心我的预定会议，根据登录名的id查询和状态查询已取消的会议
	 * */
	public ArrayList<Meeting> showMyCancelMeeting(int eid){
		MeetingDao dao =new MeetingDao();
		return dao.showMyCancelMeeting(eid);
	}
	/**
	 * 个人中心我的预定会议，根据登录名的id查询7天后参加大会议
	 * */
	public ArrayList<Meeting> showMyMeeting7(int eid){
		MeetingDao dao =new MeetingDao();
		return dao.showMyMeeting7(eid);
	}

	
	/**
	 * 根据登录用户的会议id修改会议的状态
	 * 状态0待审批1已预订2撤销
	 * */
	public boolean updateStatusMeeting(int mid,String mreason,int mstatus){
		MeetingDao dao =new MeetingDao();
		return dao.updateStatusMeeting(mid,mreason, mstatus);
	}
	
	/**
	 * 个人中心我的预定会议，根据登录名的id查询
	 * */
	public ArrayList<Meeting> showMyMeeting(int eid){
		MeetingDao dao =new MeetingDao();
		return dao.showMyMeeting(eid);
	}
	/**
	 * 个人中心我的预定会议，根据登录名用户的会议的id查出所有参会人员
	 * */
	public ArrayList<EMP> showMyMeetingPeople(int mid){
		MeetingDao dao =new MeetingDao();
		return dao.showMyMeetingPeople(mid);
	}
}
