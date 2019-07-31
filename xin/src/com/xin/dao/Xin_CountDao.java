package com.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xin.util.DButil;
import com.xin.vo.User;

public class Xin_CountDao {
	//获得计数
	public int getCount(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DButil.getConnection();
			String sql = "select * from xin_Count";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				//查出的列的值赋给user
				return rs.getInt(1);
				
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
		
		return 0;
	}
	
	/**
	 * 更新计数
	 * */
	public boolean upDateCount(int count){
		Connection conn = null;
		PreparedStatement ps = null;
		//ResultSet rs = null;
		User u = null;
		try {
			conn=DButil.getConnection();
			String sql = "UPDATE xin_count SET count=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,count);
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

	
	
}
