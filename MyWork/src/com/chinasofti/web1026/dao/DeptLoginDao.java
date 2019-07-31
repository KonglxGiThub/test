package com.chinasofti.web1026.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.chinasofti.web1026.model.DeptTable;
import com.chinasofti.web1026.tool.DaoTool;

public class DeptLoginDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public boolean login(int id,String name){
		try {
			conn = DaoTool.getConnection();
			String sql = "select deptNo,dName from dept where deptno = ? and dname = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, name);
		    rs = ps.executeQuery();
		    if(rs.next()){
		    	
		    	return true;
		    }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DaoTool.close(conn,ps,rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return false;
	}
	
	//查询
	public List<DeptTable> show(){
		List<DeptTable> list = new ArrayList<DeptTable>();
		try {
			conn = DaoTool.getConnection();
			String sql = "select * from dept";
			ps = conn.prepareStatement(sql);
		    rs = ps.executeQuery();
		   while(rs.next()){
			   DeptTable d = new DeptTable(rs.getString(1),rs.getString(2),rs.getString(3));
		       list.add(d);
		    }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DaoTool.close(conn,ps,rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return list;
	}
	

}
