package meeting.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import meeting.xin.dbutil.DButil;
import meeting.xin.vo.EMP;
import meeting.xin.vo.Meeting;

public class MeetingDao {
	/**
	 * 预定会议，添加登录zhe预定的会议
	 * */
	public boolean addMeeting(Meeting meeting){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn=DButil.getConnection();
			String sql ="INSERT INTO meeting VALUES(meeting_mid_seq.nextval,?,?,?,?,?,Sysdate,?,?,1,'')"; 
			ps=conn.prepareStatement(sql);
			ps.setString(1,meeting.getMname());
			ps.setInt(2, meeting.getMpeople());
			ps.setTimestamp(3,meeting.getMstart());
			ps.setTimestamp(4,meeting.getMend());
			ps.setString(5,meeting.getMnote());
		
			ps.setInt(6, meeting.getRid());
			ps.setInt(7, meeting.getEid());
			int rs = ps.executeUpdate();
			if(rs>0){

				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	

	/**
	 * 根据登录用户的会议id修改会议的状态
	 * 状态0待审批1已预订2撤销
	 * */
	public boolean updateStatusMeeting(int mid,String mreason,int mstatus){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn=DButil.getConnection();
			String sql="UPDATE meeting SET mstatus = ?,mreason=? WHERE mid=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1,mstatus);
			ps.setString(2,mreason);
			ps.setInt(3,mid);
			int rs =ps.executeUpdate();
			if(rs>0){
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return false;
	}	
	
	
	/**
	 * 个人中心我的预定会议，根据登录名用户的会议的id查出所有参会人员=======
	 * */
	public ArrayList<EMP> showMyMeetingPeople(int mid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<EMP> showMyMeetingPeople=new ArrayList<EMP>();
		try {
			conn=DButil.getConnection();
			String sql ="SELECT e.* from meeting m,jOINMEETING j,emp e "
					+ "WHERE j.mid=m.mid AND j.eid=e.eid AND j.mid=?"; 
			ps=conn.prepareStatement(sql);
			ps.setInt(1,mid);
			rs = ps.executeQuery();
			while(rs.next()){
				showMyMeetingPeople.add(new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9),rs.getInt(10)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return showMyMeetingPeople;
	}	
	
	/**
	 * 个人中心我的预定会议，查出只有我预定的会议根据登录名的id查询
	 * */
	public ArrayList<Meeting> showMyMeeting(int eid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Meeting> showMyMeeting=new ArrayList<Meeting>();
		try {
			conn=DButil.getConnection();
			String sql ="SELECT m.*,r.rname from meeting m,room r WHERE r.rid= m.rid AND m.eid=?"; 
			ps=conn.prepareStatement(sql);
			ps.setInt(1,eid);
			rs = ps.executeQuery();
			while(rs.next()){
//				int mid=rs.getInt(1);
//				String mname =rs.getString(2);
//				int mpeople=rs.getInt(3);
//				String mstart = rs.getString(4);
//				String mend = rs.getString(5);
//				String mnote = rs.getString(6);
//				String mtime=rs.getString(7);
//				int rid =rs.getInt(8);
//				int Deid =rs.getInt(9);
//				String mstatus = rs.getString(10);
//				String mreason = rs.getString(11);
				showMyMeeting.add(new Meeting(rs.getInt(1),rs.getString(2),rs.getInt(3),
						rs.getTimestamp(4),rs.getTimestamp(5),rs.getString(6),rs.getTimestamp(7),
						rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11),rs.getString(12)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return showMyMeeting;
	}
	/**
	 * 个人中心我的最新通知，根据登录名的id查询7天后参加大会议
	 * */
	public ArrayList<Meeting> showMyMeeting7(int eid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Meeting> showMyMeeting=new ArrayList<Meeting>();
		try {
			conn=DButil.getConnection();
			String sql ="SELECT m.*,r.rname,e.ename from meeting m,room r,jOINMEETING j,emp e "
					+ "WHERE r.rid= m.rid AND j.mid=m.mid AND m.eid=e.eid AND m.mstatus=1"
					+ " AND (m.mstart BETWEEN  SYSDATE AND  (SYSDATE+7)) AND j.eid =?"; 
			ps=conn.prepareStatement(sql);
			ps.setInt(1,eid);
			rs = ps.executeQuery();
			while(rs.next()){
				showMyMeeting.add(new Meeting(rs.getInt(1),rs.getString(2),rs.getInt(3),
						rs.getTimestamp(4),rs.getTimestamp(5),rs.getString(6),rs.getTimestamp(7),
						rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11),rs.getString(12),
						rs.getString(13)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return showMyMeeting;
	}
	
	/**
	 * 个人中心我的预定会议，根据登录名的id查询和状态查询已取消的会议
	 * */
	public ArrayList<Meeting> showMyCancelMeeting(int eid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Meeting> showMyMeeting=new ArrayList<Meeting>();
		try {
			conn=DButil.getConnection();
			String sql ="SELECT m.*,r.rname from meeting m,room r WHERE r.rid= m.rid AND m.eid=?"
					+ "AND m.mstatus=2"; 
			ps=conn.prepareStatement(sql);
			ps.setInt(1,eid);

			rs = ps.executeQuery();
			while(rs.next()){
				showMyMeeting.add(new Meeting(rs.getInt(1),rs.getString(2),rs.getInt(3),
						rs.getTimestamp(4),rs.getTimestamp(5),rs.getString(6),rs.getTimestamp(7),
						rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11),rs.getString(12)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return showMyMeeting;
	}

	/**
	 * 个人中心我的会议，根据登录名的与会人员表查询，我可以参加被人预定的会议
	 * */
	public ArrayList<Meeting> ShowMyMeeting(int eid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Meeting> showMyMeeting=new ArrayList<Meeting>();
		try {
			conn=DButil.getConnection();
			String sql ="SELECT m.*,r.rname,e.ename from meeting m,room r,jOINMEETING j,emp e"
					+ " WHERE r.rid= m.rid AND j.mid=m.mid AND m.eid=e.eid AND m.mstatus =1"
					+ " AND j.eid = ?"; 
			ps=conn.prepareStatement(sql);
			ps.setInt(1,eid);
			rs = ps.executeQuery();
			while(rs.next()){

				showMyMeeting.add(new Meeting(rs.getInt(1),rs.getString(2),rs.getInt(3),
						rs.getTimestamp(4),rs.getTimestamp(5),rs.getString(6),rs.getTimestamp(7),
						rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11),rs.getString(12),
						rs.getString(13)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return showMyMeeting;
	}
}	
	




