package dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import vo.Depart;

public class DepartmentsDao {
	//实现连接数据库查询所有的部门信息
	public static void getAllDepartments(){
		
		try {
			//连接数据库的地址，用户名，密码
			String url = "jdbc:oracle:thin:localhost:1521:ORCL";
			String name= "hr";
			String pass= "orcl";
			//1加载驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2获得连接
			Connection conn = DriverManager.getConnection(url, name, pass);
			//3定义语句对象
			Statement st = conn.createStatement();
			//定义sql语句
			String sql = "select department_id,department_name,location_id　from departments";
			//4执行sql语句,chaxun
			ResultSet rs = st.executeQuery(sql);
			//5调用结果集的方法实现遍历
			while(rs.next()){
				//获得结果集的数据,下标从1开始，1表示一行第一列，2表示第二列
				int id = rs.getInt(1);
				String ename = rs.getString(2);
				int lid = rs.getInt(3);
				System.out.println(id+" "+ename+" "+lid);
			}
			//5关闭资源
			rs.close();
			st.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 

	public static void tt(){
		String url = "jdbc:oracle:thin:localhost:1521:ORCL";
		String name= "hr";
		String pass= "orcl";
		//1加载驱动
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(url,name,pass);
			Statement st = conn.createStatement();
			String sql="select department_id,department_name,location_id　from departments";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
			int id = rs.getInt(1);
			String ename = rs.getString(2);
			int lid = rs.getInt(3);
			System.out.println(id+" "+ename+" "+lid);
			}
			rs.close();
			st.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//根据id和名字查询信息
	public Depart getid(int did,String dname){
		Connection conn = null;
		Statement st=null;
		ResultSet rs=null;
		try {
			//连接数据库的地址，用户名，密码
			String url = "jdbc:oracle:thin:localhost:1521:ORCL";
			String name= "hr";
			String pass= "orcl";
			//1加载驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2获得连接
			conn = DriverManager.getConnection(url, name, pass);
			//3定义语句对象
			 st = conn.createStatement();
			//定义sql语句
			String sql = "select *　from departments where department_id = "
						+did+"and department_name='"+dname+"'" ;
			//4执行sql语句,chaxun
			 rs = st.executeQuery(sql);
			//5调用结果集的方法实现遍历
			if(rs.next()){
				//获得结果集的数据,下标从1开始，1表示一行第一列，2表示第二列
				Depart d = new Depart();
				d.setDepartmentId(rs.getInt(1));
				d.setDepartmentName(rs.getString(2));
				d.setLocation_id(rs.getInt(3));
				d.setManager_id(rs.getInt(4));
				return d;
			}
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			//5关闭资源
			try {
				rs.close();
				st.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		return null;
	}
	public static void main(String[] args) {
		//DepartmentsDao.getAllDepartments();
		//DepartmentsDao.tt();
		DepartmentsDao d = new DepartmentsDao();
		Depart de = d.getid(60, "IT");
		System.out.println(de);
//System.out.println(de.getDepartmentId()+de.getDepartmentName()+de.getLocation_id()+de.getManager_id());

	}

}
