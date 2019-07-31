package com.neusoft.system.db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DBUtils 
{
    //定义驱动串
	private final static String driver="oracle.jdbc.driver.OracleDriver";
	//定义连接串
	private final static String url="jdbc:oracle:thin:@localhost:1521:ORACLE";
	
	//通过静态块加载驱动
	static 
	{
		try 
		{
			Class.forName(driver);
		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
	}
	
	//创建到目标数据库的连接
	public static Connection getConnection()throws Exception
	{
		return  DriverManager.getConnection(url, "test", "test");
	}
	
	
	public static void close(ResultSet rs)
	{
		try 
		{
			if(rs!=null)
			{
				rs.close();
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstm)
	{
		try
		{
			if(pstm!=null)
			{
				pstm.close();
			}
		}
		catch(Exception ex)
		{
			
		}
	}
	
	public static void close(Connection conn)
	{
		try
		{
			// 连接存在         并且  尚未关闭
			if(conn!=null && !conn.isClosed())
			{
				conn.close();
			}
		}
		catch(Exception ex)
		{
			
		}
	}

	
	public static void main(String[] args) 
	{
		try 
		{
			System.out.println(DBUtils.getConnection());
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
