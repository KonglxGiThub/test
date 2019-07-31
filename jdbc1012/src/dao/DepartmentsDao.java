package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import vo.Department;

public class DepartmentsDao {

	//实现连接数据库查询所有的部门信息
	public void getAllDepartments(){		
		try {
			//连接数据库的地址，用户名和密码
			String url = "jdbc:oracle:thin:@localhost:1521:orcl1";
			String name = "hr";
			String pass = "orcl";
			//1,加载数据库驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2,获得连接
			Connection con = DriverManager.getConnection(url, name, pass);
			//3定义语句对象
			Statement st = con.createStatement();
			//定义一个sql语句
			String sql = "select department_id,department_name,location_id from departments";
			//4，执行sql语句，查询
			ResultSet rs = st.executeQuery(sql);
			//调用结果集的next方法实现遍历
			while(rs.next()){
				//获得结果集的数据
				int id = rs.getInt("department_id");
				String dname = rs.getString("department_name");
				int lid = rs.getInt("location_id");
				System.out.println(id+" "+dname+" "+lid);
			}
			//5,关闭资源
			rs.close();
			st.close();
			con.close();
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//根据id和名字查询信息
	public Department getDepartmentById(int id,String departmentName){
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//连接数据库的地址，用户名和密码
			String url = "jdbc:oracle:thin:@localhost:1521:orcl1";
			String name = "hr";
			String pass = "orcl";
			//1,加载数据库驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2,获得连接
			 con = DriverManager.getConnection(url, name, pass);
			//3定义语句对象
			st = con.createStatement();
			//定义一个sql语句
			String sql = "select * from departments where department_id="+id+" and department_name='"+departmentName+"'";
			//4，执行sql语句，查询
			rs = st.executeQuery(sql);
			//调用结果集的next方法实现遍历
			if(rs.next()){
				Department d = new Department();
				d.setDepartmentId(rs.getInt(1));
				d.setDepartmentName(rs.getString(2));
				d.setManager_id(rs.getInt(3));
				d.setLocation_id(rs.getInt(4));
				return d;
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
				rs.close();
				st.close();
				con.close();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DepartmentsDao dao = new DepartmentsDao();
		//dao.getAllDepartments();
		Department d = dao.getDepartmentById(60, "IT");
		System.out.println(d);
	}

}
