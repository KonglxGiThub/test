package com.bs.xyl.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.xyl.util.BaseDao;

public class CommonDao extends BaseDao {
	String sql=null;
	int num=0;
	//admin用户登录
	public String admLogin(String account){
		sql="select pwd from t_admin where account='"+account+"'  ";
		List list =null;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				return (String) tempRow.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	//student用户登录
	public String stuLogin(String stu_no){
		//state=1已通过验证，有管理员确定
		sql="select pwd from t_stu where stu_no='"+stu_no+"' and state=1 ";
		List list =null;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				return (String) tempRow.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	//根据表名和主键删除数据方法
	public int delete(String ids,String table_name){
		if (ids.endsWith(",")) {
			int idCnt = 0;
			ids = ids.substring(0, ids.length() - 1);
			// 截取以逗号分割的字符串转化成int
			String[] idArray = ids.split(",");
			// 根据数组长度循环sql语句
			for (int i = 0; i < idArray.length; i++) {
				if (idArray[i] instanceof String) {
					ids = idArray[i].replace("'", "");
					String sql = "delete from "+table_name+" where id = " + ids;
					try {
						idCnt += super.executeSQL(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				} else {
					System.err.println("数组是空的");
				}
			}
			System.out.println(idCnt);
			return idCnt;
		} else {
			System.out.println("删除数据失败");
			return 0;
		}
	}
}
