package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DemoDao2 {

	//插入
	public boolean addDemo(String name,int age){
		Connection con = null;
		
		PreparedStatement ps = null;
		//ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1", "hr", "orcl");		
			String sql = "insert into demo values (demo_id_seq.nextval,?,?)";
			ps = con.prepareStatement(sql);
			//为占位符赋值
			ps.setString(1, name);
			ps.setInt(2, age);
			//执行增删改语句，返回被影响的行数
			int rs = ps.executeUpdate();
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
				ps.close();
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
		DemoDao2 dao = new DemoDao2();
		boolean flag = dao.addDemo("zzzx", 60);
		if(flag){
			System.out.println("成功");
		}
		else{
			System.out.println("失败");
		}
	}

}
