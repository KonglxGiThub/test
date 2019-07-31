package com.neusoft.system.db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DBUtils 
{
    //������y
	private final static String driver="oracle.jdbc.driver.OracleDriver";
	//private final static String url="jdbc:mysql://127.0.0.1/mywork";
	//�������Ӵ�
	
	private final static String url="jdbc:oracle:thin:@localhost:1521:orcl";
	//private final static String driver="com.mysql.jdbc.Driver";
	private final static String user="test";
	private final static String password="test";

	//ͨ��̬�������
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
	
	//������Ŀ����ݿ������
	public static Connection getConnection()throws Exception
	{
		return  DriverManager.getConnection(url, user, password);
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
			// ���Ӵ���         ����  ��δ�ر�
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
