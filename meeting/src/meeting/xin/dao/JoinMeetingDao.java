package meeting.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import meeting.xin.dbutil.DButil;

public class JoinMeetingDao {
//预定会议，添加与会人员
	public boolean addEmp(String[]emp){
		Connection conn = null;
		PreparedStatement ps = null;
		int rs=0;
		try {
			conn=DButil.getConnection();
			for(int i=0;i<emp.length;i++){
			String sql ="INSERT INTO JOINMEETING VALUES((SELECT MAX(mid)FROM meeting),?)"; 
			
			ps=conn.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(emp[i]));
//			System.out.println(emp[i]);
//			System.out.println(sql);
			 rs = ps.executeUpdate();
			}
			
		
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
}
