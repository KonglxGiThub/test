package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtils {
	//1定义数据库驱动串
	private final static String dirver="oracle.jdbc.driver.OracleDriver";
	//2定义数据库的连接串orcl是数据库的名
	private final static String url="jdbc:oracle:thin:@localhost:1521:orcl";
	//3加载驱动进内存
	static{
		try {
			Class.forName(dirver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//创建到目标数据库的连接
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,"test","test");
	}
	public static void close(PreparedStatement pstm){
		if(pstm!=null){
			try {
				pstm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	} 
	public static void close(Connection conn){
		try {
			// 连接存在         并且  尚未关闭
			if(conn!=null&&!conn.isClosed()){}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		try {
			System.out.println(DBUtils.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
