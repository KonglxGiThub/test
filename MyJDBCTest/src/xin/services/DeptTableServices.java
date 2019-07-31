package xin.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import xin.dbtool.DBtool;
import xin.model.DeptTable;

public class DeptTableServices {
	 String driver = "oracle.jdbc.driver.OracleDriver";
	 String url = "jdbc:oracle:thin:localhost:1521:ORCL";
	 String name = "MyTest";
	 String pass = "mytest";
	 List<DeptTable> list = new ArrayList<DeptTable>();
	 Connection conn = null;
	 PreparedStatement ps = null;
	 ResultSet rs = null;
	 //查询所有部门信息，没用model里的类
	 public void showAllDept(){
		 try {
			 //1加载驱动
			Class.forName(driver);
			//2数据库链接
			conn = DriverManager.getConnection(url,name,pass);
			//3(statement定义语句对象，sql语句)
//			Statement st = conn.createStatement();
			//定义sql语句
			String sql ="select * from dept";
			//prepareStatement定义语句对象
			ps = conn.prepareStatement(sql);
//			rs = st.executeQuery(sql);
			//4执行sql语句
			rs = ps.executeQuery();
			//5调用结果集的方法实现遍历
			while(rs.next()){
			//获得结果集的数据,下标从1开始，1表示一行第一列，2表示第二列

				int id = rs.getInt(1);
				String name = rs.getString(2);
				String pass = rs.getString(3);
				System.out.println("部门号是："+id+"	部门名是："+name+"	部门所在地是："+pass);
			}
			//6关闭资源
			rs.close();
			ps.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	 }
	 //查询所有部门信息，有到类
	 public List<DeptTable> showAllDept1(){
		 try {
			 //1加载驱动
			Class.forName(driver);
			//2数据库链接
			conn = DriverManager.getConnection(url,name,pass);
			//3(statement定义语句对象，sql语句)
//			Statement st = conn.createStatement();
			//定义sql语句
			String sql ="select * from dept";
			//prepareStatement定义语句对象
			ps = conn.prepareStatement(sql);
//			rs = st.executeQuery(sql);
			//4执行sql语句
			rs = ps.executeQuery();
			//5调用结果集的方法实现遍历
			while(rs.next()){
			//获得结果集的数据,下标从1开始，1表示一行第一列，2表示第二列
//				int id = rs.getInt(1);
//				String name = rs.getString(2);
//				String pass = rs.getString(3);
//				System.out.println("部门号是："+id+"	部门名是："+name+"	部门所在地是："+pass);
				//通过set赋值
//				DeptTable dept = new DeptTable();
//				dept.setDeptNo(rs.getInt(1));
//				dept.setdName(rs.getString(2));
//				dept.setCity(rs.getString(3));
				//简写形式构造器
				DeptTable dept = new DeptTable(rs.getInt(1),rs.getString(2),rs.getString(3));
				list.add(dept);
			}
			//6关闭资源
			rs.close();
			ps.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return list;
	 }
	 public boolean addDept(String...val){
		 try {
			conn = DBtool.getConnection();
			String sql = "insert into dept values(DEPT_ID_SEQ.NEXTVAL,?,?)";
			ps = conn.prepareStatement(sql);
			for(int i = 0;i<val.length;i++){
				ps.setString(i+1,val[i]);
			}
			int rs = ps.executeUpdate();
			while(rs>0){
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			finally{
				try {
					DBtool.close(conn, ps);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 return false;
	 }
	 public boolean addDept(DeptTable dept){
		 try {
			conn = DBtool.getConnection();
			String sql = "insert into dept values(DEPT_ID_SEQ.NEXTVAL,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1,dept.getdName());
			ps.setString(2,dept.getCity());
			int rs = ps.executeUpdate();
			while(rs>0){
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			finally{
				try {
					DBtool.close(conn, ps);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 return false;
	 }

	 public boolean deleteDept(int id){
		 try {
			conn = DBtool.getConnection();
			String sql = "delete from dept where deptno = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,id);
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
				DBtool.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		 return false;
	 }
	 
	 public boolean updateDept(DeptTable dept){
		 try {
			conn = DBtool.getConnection();
			String sql = "update dept set deptno = DEPT_ID_SEQ.NEXTVAL,dname = ?,city = ? "
					+ "where deptno = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,dept.getdName());
			ps.setString(2,dept.getCity());
			ps.setInt(3, dept.getDeptNo());
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
				DBtool.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		 return false;
	 }
}
