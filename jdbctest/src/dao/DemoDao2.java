package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import vo.Demo;

public class DemoDao2 {

	public 	List<Demo>  showAllTest(){
		String url = "jdbc:oracle:thin:localhost:1521:ORCL";
		String name= "hr";
		String pass= "orcl";
		Connection conn = null;
		Statement st=null;
		ResultSet rs=null;
		List<Demo> list = null;
		//1加载驱动
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, name, pass);
			st = conn.createStatement();
			String sql = "select * from demo";
			rs = st.executeQuery(sql);
			while(rs.next()){
				list = new ArrayList<Demo>();
				Demo d = new Demo();
				d.getAge();
				d.getId();
				d.getName();
			list.add(d);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	
	public boolean addDemo(int age,String dname){
		String url = "jdbc:oracle:thin:localhost:1521:ORCL";
		String name= "hr";
		String pass= "orcl";
		Connection conn = null;
		PreparedStatement pst=null;
		
		
		//1加载驱动
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, name, pass);
			
			String sql = "insert into demo values(demo_id_seq.nextval,?,?)";
			pst = conn.prepareStatement(sql);
			//1代表第一个问号
			pst.setString(1, dname);
			pst.setInt(2,age);
			int rs = pst.executeUpdate();
			if(rs>0){
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
		DemoDao2 d = new DemoDao2();
		boolean f = d.addDemo(20, "dsfa");
		if(f){
			System.out.println("成功");
		}
		else{
			System.out.println("shibai");
		}
		
//		List<Demo> ll = d.showAllTest();
//		for(Demo dd:ll){
//			System.out.println(dd);
//		}
	}
	
	

}
