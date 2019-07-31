package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DemoDao {

	public boolean showAllTest(int age,String dname){
		String url = "jdbc:oracle:thin:localhost:1521:ORCL";
		String name= "hr";
		String pass= "orcl";
		Connection conn = null;
		Statement st=null;
		
		//1加载驱动
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, name, pass);
			st = conn.createStatement();
			String sql = "insert into demo values(demo_id_seq.nextval,'"+dname+"',"+age+")";
			int tag = st.executeUpdate(sql);
			if(tag>0){
				return true;
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	
	public boolean addDemo(int age,String dname){
		String url = "jdbc:oracle:thin:localhost:1521:ORCL";
		String name= "hr";
		String pass= "orcl";
		Connection conn = null;
		Statement st=null;
		
		//1加载驱动
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, name, pass);
			st = conn.createStatement();
			String sql = "insert into demo values(demo_id_seq.nextval,'"+dname+"',"+age+")";
			int tag = st.executeUpdate(sql);
			if(tag>0){
				return true;
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) {
		DemoDao d = new DemoDao();
		boolean f = d.addDemo(20, "dsfa");
		if(f){
			System.out.println("成功");
		}
		else{
			System.out.println("shibai");
		}
		

	}

}
