package meeting.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import meeting.xin.dbutil.DButil;
import meeting.xin.vo.Dept;

public class DeptDao {
	/**
	 * 人员管理里的部门管理的所有部门
	 * */
	public ArrayList<Dept> showAllDept(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Dept> deptList=new ArrayList<Dept>();
		try {
			conn=DButil.getConnection();
			String sql="select * from dept";
			ps = conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				deptList.add(new Dept(rs.getInt(1),rs.getString(2)));
				
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
			
		}return deptList;
		
	}
	/**
	 * 人员管理里的部门管理的 添加部门
	 * */
	public boolean addDept(String addName){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DButil.getConnection();
			String sql="INSERT INTO dept VALUES(dept_did_seq.nextval,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1,addName);
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
	 * 人员管理里的部门管理的 删除
	 * */
	public boolean DeleteDept(int did){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DButil.getConnection();
			String sql="DELETE dept WHERE did =?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1,did);
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
}
