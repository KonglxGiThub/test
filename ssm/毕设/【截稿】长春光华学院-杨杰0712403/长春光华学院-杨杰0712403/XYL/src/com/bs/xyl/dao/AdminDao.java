package com.bs.xyl.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.xyl.bean.Admin;
import com.bs.xyl.bean.SysLog;
import com.bs.xyl.util.BaseDao;

public class AdminDao extends BaseDao {
	String sql = null;
	int numR = 0;

	// 查看所有管理员
	public List viewAll() {
		sql = "select id,account,pwd,name,role from t_admin order by role,id desc ";
		List list = null;
		List<Admin> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Admin admin = new Admin();
					admin.setId(Integer.parseInt((String) tempRow.get(0)));
					admin.setAccount((String) tempRow.get(1));
					admin.setPwd((String) tempRow.get(2));
					admin.setName((String) tempRow.get(3));
					admin.setRole(Integer.parseInt((String) tempRow.get(4)));
					newList.add(admin);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	/***************************************************************************
	 * 班级管理员根据id查看信息
	 * 
	 * @param id
	 * @return list
	 */
	public List viewAdmin(int id) {
		sql = "select id,account,pwd,name,role from t_admin where id=" + id;
		List list = null;
		List<Admin> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Admin admin = new Admin();
					admin.setId(Integer.parseInt((String) tempRow.get(0)));
					admin.setAccount((String) tempRow.get(1));
					admin.setPwd((String) tempRow.get(2));
					admin.setName((String) tempRow.get(3));
					admin.setRole(Integer.parseInt((String) tempRow.get(4)));
					newList.add(admin);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	public Admin findAdm(String account) {
		sql = "select id,account,pwd,name,role from t_admin where account='"
				+ account + "'";
		Admin admin = new Admin();
		List list = null;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				admin.setId(Integer.parseInt((String) tempRow.get(0)));
				admin.setAccount((String) tempRow.get(1));
				admin.setPwd((String) tempRow.get(2));
				admin.setName((String) tempRow.get(3));
				admin.setRole(Integer.parseInt((String) tempRow.get(4)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}

	// 新增一个管理员
	public int addNew(Admin admin) {
		sql = "insert into t_admin(account,pwd,name,role) values('"
				+ admin.getAccount() + "','" + admin.getPwd() + "','"
				+ admin.getName() + "','" + admin.getRole() + "') ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改管理员信息
	public int update(Admin admin) {
		sql = "update  t_admin set account='" + admin.getAccount() + "',pwd='"
				+ admin.getPwd() + "',name='" + admin.getName() + "',role="
				+ admin.getRole() + "  where id=" + admin.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改管理员信息
	public int updateCls(Admin admin) {
		sql = "update  t_admin set pwd='" + admin.getPwd() + "',name='"
				+ admin.getName() + "'  where id=" + admin.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 删除数据
	public int delete(String ids) {
		if (ids.endsWith(",")) {
			int idCnt = 0;
			ids = ids.substring(0, ids.length() - 1);
			// 截取以逗号分割的字符串转化成int
			String[] idArray = ids.split(",");
			// 根据数组长度循环sql语句
			for (int i = 0; i < idArray.length; i++) {
				if (idArray[i] instanceof String) {
					ids = idArray[i].replace("'", "");
					String sql = "delete from t_admin where id = " + ids;
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
	
	public List viewLog() {
		sql = "select id,time,text from t_role order by id desc ";
		List list = null;
		List<SysLog> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					SysLog log = new SysLog();
					log.setId(Integer.parseInt((String) tempRow.get(0)));
					log.setTime((String) tempRow.get(1));
					log.setText((String) tempRow.get(2));
					newList.add(log);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}
}
