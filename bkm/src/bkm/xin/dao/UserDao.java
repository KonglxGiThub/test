package bkm.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bkm.xin.dbutil.DButil;
import bkm.xin.vo.User;

public class UserDao {
	/**
	 * 实现登录，参数pass和name*/
	public User login(User user){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User u = null;
		try {
			conn = DButil.getConnection();
			String sql ="select * from xin where name =?and pass=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2,user.getPass());
			rs = ps.executeQuery();
			while(rs.next()){
				u = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return u;
	}
}
