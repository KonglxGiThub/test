package com.xin.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBTool {
	static String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:localhost:1521:ORCL";
	static String name = "MyTest";
	static String pass = "mytest";
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		Connection conn =DriverManager.getConnection(url, name, pass);
		return conn;
	}
	public static void close(Connection conn,PreparedStatement ps,ResultSet rs) throws SQLException{
		if(rs!=null){
			rs.close();
		}
		if(ps!=null){
			ps.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
	public static void close(Connection conn,PreparedStatement ps) throws SQLException{

		if(ps!=null){
			ps.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
	public static void main(String[] args) {
		try {
			System.out.println(DBTool.getConnection());
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
