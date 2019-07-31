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
 * 登录方法
 * 
 **/

	public User login(String name,String pass){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = DButil.getConnection();
			String sql = "select * from xin where name=?and pass = ?";
			ps = conn.prepareStatement(sql);
			//为第一个和第二个问号赋值
			ps.setString(1,name);
			ps.setString(2,pass);
			rs = ps.executeQuery();
			while(rs.next()){
				//查出的列的值赋给user
				user = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
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
		
		return user;
	}

	/**
	 * 显示全部方法
	 * 
	 **/
	public List<User>showAllUser(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		List<User> list = new ArrayList<User>();
		try {
			conn=DButil.getConnection();
			String sql="select id,name,pass,decode(status,"
					+ " 1,'审核通过',2,'未通过',0,'待审核','false') 状态  from xin";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();	
			while(rs.next()){
				list.add(new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				DButil.close(conn, ps,rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	
	/**
	 * 添加方法
	 * 
	 **/
	public boolean addUser(User user){
		Connection conn = null;
		PreparedStatement ps = null;
		//ResultSet rs = null;
		try {
			conn=DButil.getConnection();
			String sql ="INSERT INTO xin VALUES(XIN_ID_SEQ.Nextval,?,?,?) ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2,user.getPass());
			ps.setString(3, user.getStatus());
			int num = ps.executeUpdate();
			if(num>0){
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
	 * 删除方法
	 * 
	 **/
	public boolean delUser(int id){
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

	/**
	 *实现根据id查询User的方法 
	 *参数：用户名，密码
	 *开发者：tom
	 *返回值：该用户
	 */
	public User selectUserById(int id){
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User u = null;
		try {
			con = DButil.getConnection();
			String sql = "select * from xin where id=?";
			ps = con.prepareStatement(sql);
			//为占位符赋值
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				u = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			}
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(con, ps,rs);
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return u;
	}

}