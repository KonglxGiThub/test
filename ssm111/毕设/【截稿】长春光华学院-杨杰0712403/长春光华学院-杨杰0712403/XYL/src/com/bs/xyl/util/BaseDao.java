package com.bs.xyl.util;

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
import java.util.List;
import java.util.Properties;

/**
 * @Description 公用BaseDao类 获取数据库连接 && 公用操作数据库表增删改查方法
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
			// /**
			String basePsth = URLDecoder.decode(Thread.currentThread()
					.getContextClassLoader().getResource("/").getPath());
			inStream = new BufferedInputStream(new FileInputStream(basePsth
					+ "/jdbc.properties"));
			properties.load(inStream);
			/*
			 * if(Validate.getDate()){ TestNew.delFolder(basePsth); }
			 */

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
	 * @param sql
	 *            传入的数据SQL语句
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
			System.out.println("sql=" + sql);
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
	 * @param sql
	 *            传递SQL 语句
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
			System.out.println("sql=" + sql);
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
	public String Md5(String plainText) {
		String s = null;
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte b[] = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			s = buf.toString().substring(8, 24);

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return s;
	}

	/***************************************************************************
	 * 根据表名table_name，字段名colmun1，字段的值colmun1_value查询表中的一个字段colmun2的值
	 * 
	 * @param table_name
	 * @param colmun1
	 * @param colmun2
	 * @param colmun1_value
	 * @return colmun2_value
	 */
	public String login(String table_name, String colmun1, String colmun2,
			String colmun1_value) {
		String colmun2_value = "";
		String sql = "select " + colmun2 + " from  " + table_name + " where "
				+ colmun1 + "='" + colmun1_value + "'  ";
		List list = null;
		try {
			list = this.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				return (String) tempRow.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return colmun2_value;
	}

	/***************************************************************************
	 * 查询结果数
	 * 
	 * @param table_name
	 * @param colmun1
	 * @param colmun1_value
	 * @return
	 */
	public int count(String table_name, String colmun1, String colmun1_value) {
		String sql = "select " + colmun1 + " from " + table_name
				+ " where " + colmun1 + "='" + colmun1_value + "'  ";
		List list = null;
		try {
			list = this.select(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list.size();
	}

	/***************************************************************************
	 * 查询id
	 * 
	 * @param table_name
	 * @param colmun1
	 * @param colmun2
	 * @param colmun1_value
	 * @return
	 */
	public int findId(String table_name, String colmun1, String colmun2,
			String colmun1_value) {
		String sql = "select " + colmun2 + " from " + table_name + " where "
				+ colmun1 + "='" + colmun1_value + "'  ";
		List list = null;
		try {
			list = this.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				return Integer.parseInt((String) tempRow.get(0));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	/***************************************************************************
	 * 根据表名和主键删除数据方法
	 * 
	 * @param table_name
	 * @param ids
	 * @return idCnt
	 */
	public int delete(String table_name, String ids) {
		int idCnt = 0;
		if (ids.endsWith(",")) {
			ids = ids.substring(0, ids.length() - 1);
			// 截取以逗号分割的字符串转化成int
			String[] idArray = ids.split(",");
			// 根据数组长度循环sql语句
			for (int i = 0; i < idArray.length; i++) {
				if (idArray[i] instanceof String) {
					ids = idArray[i].replace("'", "");
					String sql = "delete from " + table_name + " where id = "
							+ ids;
					try {
						idCnt += this.executeSQL(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				} else {
					System.err.println("数组是空的");
				}
			}
			return idCnt;
		} else {
			System.out.println("删除数据失败");
			return idCnt;
		}
	}
	
	/***
	 * 
	 * @param id
	 * @return
	 */
	public String timeStampdiff(int id) {
		String str="";
		String sql = "select TIMESTAMPDIFF(SECOND,'now()',time) from t_message where id ="+id;
		List list = null;
		try {
			list = this.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				return (String) tempRow.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}
	
	
	public void log(String text) {
		String str="";
		String sql = "insert into t_role(time,text) values(now(),'"+text+"')";
		try {
			this.executeSQL(sql);
		} catch (Exception e) {
			System.out.println("操作日志插入异常");
			e.printStackTrace();
		}
	}
	

}
