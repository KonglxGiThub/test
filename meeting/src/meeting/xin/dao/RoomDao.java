package meeting.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import meeting.xin.dbutil.DButil;
import meeting.xin.vo.Meeting;
import meeting.xin.vo.Room;

public class RoomDao {
	/**
	 * 查询所有会可用的会议室,根据时间判断*/
	public ArrayList<Room> showMyCanUseMeeting(Timestamp start,Timestamp end){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Room> showAllRoomList = new ArrayList<Room>();
		try {
			conn = DButil.getConnection();
			String sql="select r.rid,r.rname,r.rpeople from room r WHERE r.rid NOT IN(SELECT rid FROM meeting m "
					+ "WHERE( ? > m.mstart AND ? < m.mend) or ( ? > m.mstart AND ? < m.mend ) or "
					+ "(? < m.mstart AND ? > m.mend))";
			ps = conn.prepareStatement(sql);
			ps.setTimestamp(1, start);
			ps.setTimestamp(2, start);
			ps.setTimestamp(3, end);
			ps.setTimestamp(4, end);
			ps.setTimestamp(5, start);
			ps.setTimestamp(6, end);
			//System.out.println(sql);
			rs = ps.executeQuery();
			while(rs.next()){
		showAllRoomList.add(new Room(rs.getInt(1),rs.getString(2),rs.getInt(3)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DButil.close(conn, ps, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return showAllRoomList;
	}

	/***
	 * 会议预定，添加会议室,详细会议室和修改会议室信息
	 * 
	 * */
	public boolean updateRoom(Room room){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DButil.getConnection();
			String sql="UPDATE room SET rnum=?,rname =?,rstatus=?,rnote=?,rpeople=? WHERE rid =?";
			ps=conn.prepareStatement(sql);
		    ps.setInt(1,room.getRnum());
		    ps.setString(2,room.getRname());
		    ps.setInt(3,room.getRstatus());
		    ps.setString(4,room.getRnnote());
		    ps.setInt(5, room.getRpeople());
		    ps.setInt(6,room.getRid());
		    int rs = ps.executeUpdate();
		    if(rs>0){
		    	return true;
		    }	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
	/***
	 * 会议预定，添加会议室
	 * 
	 * */
	public boolean addRoom(Room room){
		Connection conn = null;
		PreparedStatement ps = null;
		ArrayList<Room> addRoomList = new ArrayList<Room>();
		try {
			conn = DButil.getConnection();
			String sql="INSERT INTO room VALUES(room_rid_seq.nextval,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
		    ps.setInt(1,room.getRnum());
		    ps.setString(2,room.getRname());
		    ps.setInt(3,room.getRstatus());
		    ps.setString(4,room.getRnnote());
		    ps.setInt(5, room.getRpeople());
		    int rs = ps.executeUpdate();
		    if(rs>0){
		    	return true;
		    }	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	/***
	 * 会议预定,查询所有会议室（不是详情）
	 * 
	 * */
	public ArrayList<Room> showAllRoom(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Room> showAllRoomList = new ArrayList<Room>();
		try {
			conn = DButil.getConnection();
			String sql="select * from room";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
		showAllRoomList.add(new Room(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getInt(4),
				            rs.getString(5),rs.getInt(6)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DButil.close(conn, ps, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return showAllRoomList;
	}
}
