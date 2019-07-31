import java.sql.ResultSet;
import java.util.Scanner;

import javax.swing.DefaultBoundedRangeModel;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class test {

	static String sql1 = null;
	static DB db1 = null;
	static ResultSet ret = null;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			sql1 = "select * from shop";
			db1 = new DB(sql1);
			try {		
					
						
						ret = db1.pst.executeQuery();
						while (ret.next()) {
							String id = ret.getString(1);
							int sup = ret.getInt(2);
							System.out.println(id + "\t" + sup);
							
						}
			}catch(Exception e){
				e.printStackTrace();
			}
	}
					
}
