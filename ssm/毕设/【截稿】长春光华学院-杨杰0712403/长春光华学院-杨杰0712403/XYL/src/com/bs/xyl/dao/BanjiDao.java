package com.bs.xyl.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.xyl.bean.Banji;
import com.bs.xyl.bean.SelBan;
import com.bs.xyl.util.BaseDao;

public class BanjiDao extends BaseDao {
	String sql = null;
	int numR = 0;

	// 查看所有管理员
	public List viewAll() {
		sql = "select id,grade,name from t_class order by grade desc,name ";
		List list = null;
		List<Banji> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Banji banji = new Banji();
					banji.setId(Integer.parseInt((String) tempRow.get(0)));
					banji.setGrade((String) tempRow.get(1));
					banji.setName((String) tempRow.get(2));
					newList.add(banji);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	// 新增一个管理员
	public int addNew(Banji banji) {
		sql = "insert into t_class(grade,name) values('" + banji.getGrade()
				+ "','" + banji.getName() + "') ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改管理员信息
	public int update(Banji banji) {
		sql = "update  t_class set grade='" + banji.getGrade() + "',name='"
				+ banji.getName() + "'  where id=" + banji.getId();
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
					String sql = "delete from t_class where id = " + ids;
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

	public List selBan() {
		sql = "select id,grade,name from t_class order by grade desc,id ";
		List list = null;
		List<SelBan> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					SelBan banji = new SelBan();
					banji.setSel_ban_id(Integer.parseInt((String) tempRow
							.get(0)));
					banji.setSel_ban_name((String) tempRow.get(1)
							+ (String) tempRow.get(2));
					newList.add(banji);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	public int count2(String table_name, String colmun1, String colmun1_value,
			String colmun2, String colmun2_value) {
		String sql = "select " + colmun1 + " from " + table_name + " where "
				+ colmun1 + "='" + colmun1_value + "' and  " + colmun2 + "='"
				+ colmun2_value + "' ";
		List list = null;
		try {
			list = this.select(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list.size();
	}

	public int findId(String table_name, String colmun1, String colmun1_value,
			String colmun2, String colmun2_value) {
		String sql = "select id from " + table_name + " where " + colmun1
				+ "='" + colmun1_value + "' and  " + colmun2 + "='"
				+ colmun2_value + "' ";
		List list = null;
		List<Banji> newList = new ArrayList();
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
}
