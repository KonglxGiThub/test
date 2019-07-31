package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DemoDao {

	//插入
	public boolean addDemo(String name,int age){
		Connection con = null;
		Statement st = null;
		//ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1", "hr", "orcl");
			st = con.createStatement();
			String sql = "insert into demo values (demo_id_seq.nextval,'"+name+"',"+age+")";
			//执行增删改语句，返回被影响的行数
			int rs = st.executeUpdate(sql);
			if(rs>0){
				return true;
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
				st.close();
				con.close();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		return false;
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DemoDao dao = new DemoDao();
		boolean flag = dao.addDemo("xxxx", 20);
		if(flag){
			System.out.println("成功");
		}
		else{
			System.out.println("失败");
		}
	}

}
