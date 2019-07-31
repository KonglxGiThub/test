package bkm.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bkm.xin.dbutil.DButil;
import bkm.xin.vo.BKM;

public class BKMDao {
	/***
	 *显示全部图书
	 */
	public ArrayList<BKM> showBook(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BKM> list = new  ArrayList<BKM>();
		try {
			conn = DButil.getConnection();
			String sql = "select id,name,decode(status,0,'可借阅',1,'已借','false' )ST "+
                         "from bkm ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			//System.out.println(sql);
			while(rs.next()){
				list.add(new BKM(rs.getInt(1),rs.getString(2),rs.getString(3)));
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
		return list;
		
	}
	/***
	 *修改图书
	 */
	public boolean  borrowBook(String name){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DButil.getConnection();
			String sql = "update bkm set status =1 where name=? and status=0";
			ps = conn.prepareStatement(sql);
			ps.setString(1,name);
			int rs = ps.executeUpdate();
			//System.out.println(sql);
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
