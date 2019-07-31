package com.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xin.util.DButil;
import com.xin.vo.User;

public class UserDao {
	/**
	 * 实现登录的方法
	 * 参数：用户名，密码
	 * 开发者：tom
	 * 返回值：该用户状态
	 * */
	public User login(String name,String pass){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User u = null;
		try {
			conn=DButil.getConnection();
			String sql = "select * from xin where name=? and pass=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,pass);
			rs = ps.executeQuery();
			
			if(rs.next()){
				u = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
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
		return u;
	}
	/**
	 * 实现查询的方法
	 * 参数：用户名，密码
	 * 开发者：tom
	 * 返回值：该用户状态
	 * */
	public List<User> login(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User u = null;
		List<User> list = new ArrayList<User>();
		try {
			conn=DButil.getConnection();
			String sql = "select id,name,pass,decode(status,"
					+ " 1,'审核通过',2,'未通过',0,'待审核','false') 状态  from xin";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()){
				
				u = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				list.add(u);
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
		return list;
	}
	
	/**
	 * 实现删除的方法
	 * 参数：用户名，密码
	 * 开发者：tom
	 * 返回值：该用户状态
	 * */
	public boolean delete(int id){
		Connection conn = null;
		PreparedStatement ps = null;
//		ResultSet rs = null;
//		User u = null;
		
		try {
			conn=DButil.getConnection();
			String sql = "delete from xin where id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
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

	
	/**
	 * 实现add的方法
	 * 参数：用户名，密码
	 * 开发者：tom
	 * 返回值：该用户状态
	 * */
	public boolean addUser(User user){
		Connection conn = null;
		PreparedStatement ps = null;
		//ResultSet rs = null;
		User u = null;
		try {
			conn=DButil.getConnection();
			String sql = "INSERT INTO xin VALUES(XIN_ID_SEQ.Nextval,?,?,?) ";
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getName());
			ps.setString(2,user.getPass());
			ps.setString(3,user.getStatus());
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
	/**
	 * 实现update的方法
	 * 参数：用户名，密码
	 * 开发者：tom
	 * 返回值：该用户状态
	 * */
	public boolean upDateUser(User user){
		Connection conn = null;
		PreparedStatement ps = null;
		//ResultSet rs = null;
		User u = null;
		try {
			conn=DButil.getConnection();
			String sql = "UPDATE xin SET NAME=?,pass=?WHERE ID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getName());
			ps.setString(2,user.getPass());
			ps.setInt(3,user.getId());
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
