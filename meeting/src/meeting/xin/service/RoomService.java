package meeting.xin.service;

import java.sql.Timestamp;
import java.util.ArrayList;

import meeting.xin.dao.DeptDao;
import meeting.xin.dao.RoomDao;
import meeting.xin.vo.Meeting;
import meeting.xin.vo.Room;

public class RoomService {
	/**
	 * 查询所有会可用的会议室*/
	public ArrayList<Room> showMyCanUseMeeting(Timestamp start,Timestamp end){
		RoomDao dao =new RoomDao();
		return dao.showMyCanUseMeeting(start,end);
	}

	/***
	 * 会议预定，添加会议室,详细会议室和修改会议室信息
	 * 
	 * */
	public boolean updateRoom(Room room){
		RoomDao dao =new RoomDao();
		return dao.updateRoom(room);
	}
	/***
	 * 会议预定,查询所有会议室（不是详情）
	 * 
	 * */
	public ArrayList<Room> showAllRoom(){
		RoomDao dao =new RoomDao();
		return dao.showAllRoom();
				
	}
	/***
	 * 会议预定，添加会议室
	 * 
	 * */
	public boolean addRoom(Room room){
		RoomDao dao = new RoomDao();
		return dao.addRoom(room);
	}
	
}
